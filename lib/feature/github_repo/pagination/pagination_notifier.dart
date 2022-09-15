import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/core/exceptions/api_error_response_exception.dart';
import 'package:github_repo_search/core/model/github_repos_state.dart';
import 'package:github_repo_search/core/model/pagination_state.dart';
import 'package:github_repo_search/core/services/api/repo_search_client.dart';
import 'package:github_repo_search/core/services/model/repo_search_request_param.dart';
import 'package:github_repo_search/feature/github_repo/pagination/model/repo_pagination_state.dart';
import 'package:github_repo_search/feature/github_repo/search_form/search_form_controller.dart';
import 'package:github_repo_search/feature/github_repo/sort_option/sort_option.dart';
import 'package:github_repo_search/i18n/translations.g.dart';
import 'package:github_repo_search/utils/logger.dart';

/// ページングプロバイダー
final pageProvider = StateNotifierProvider<PaginationNotifier,
    PaginationState<RepoPaginationState>>(
  (ref) {
    // 検索ワードを監視
    final searchQuery = ref.watch(searchQueryProvider);

    // ソートオプションを監視
    final sortOption = ref.watch(sortOptionProvider);

    // クエリパラメータを生成
    final queryParam = RepoSearchRequestParam(
      q: searchQuery,
      perPage: 30,
      sort: sortOption.toQuery,
    );
    return PaginationNotifier(
      fetchNextItems: (RepoSearchRequestParam? param) async {
        return ref.watch(repoSearchClientProvider).get(
              queryParameters: param?.toJson() ?? queryParam.toJson(),
              fromJson: (json) => RepoPaginationState.update(
                GithubReposState.fromJson(json),
                param ?? queryParam,
              ),
            );
      },
      repoPaginationState: RepoPaginationState(
        param: queryParam,
      ),
    );
  },
);

class PaginationNotifier
    extends StateNotifier<PaginationState<RepoPaginationState>> {
  PaginationNotifier({
    required this.fetchNextItems,
    required this.repoPaginationState,
  }) : super(const PaginationState.loading()) {
    fetchFirstBatch();
  }

  /// disposeされたかどうか判定(dispose = false)
  @override
  bool get mounted => super.mounted;

  /// 追加のデータがあるかどうか
  bool hasNext = true;

  /// [RepoSearchRequestParam]を用いてAPI通信
  final Future<RepoPaginationState> Function(RepoSearchRequestParam? param)
      fetchNextItems;
  RepoPaginationState repoPaginationState;

  /// 実際にデータを反映
  void updateData(RepoPaginationState result) {
    // PaginationNotifierがdisposeされていたら何もしない
    if (mounted == false) {
      logger.info('mounted false');
      return;
    }
    // 取得データをもとにrepoPaginationStateの更新
    repoPaginationState = repoPaginationState.copyWith(
      totalCount: result.totalCount,
      items: repoPaginationState.items + result.items,
      param: result.param,
    );
    state = PaginationState.data(repoPaginationState);

    // 次のデータがあるかチェック
    if (repoPaginationState.items.length >= repoPaginationState.totalCount) {
      hasNext = false;
    }
  }

  /// 初回データの取得
  Future<void> fetchFirstBatch() async {
    try {
      state = const PaginationState.loading();

      final result = await fetchNextItems(null);
      updateData(result);
    } on ApiErrorResponseException catch (error, stack) {
      logger.shout(error);
      state = PaginationState.error(error, stack);
    } on SocketException catch (error, stack) {
      logger.shout(error);
      state = PaginationState.error(i18n.errorNetwork, stack);
    } on TimeoutException catch (error, stack) {
      logger.shout(error);
      state = PaginationState.error(i18n.errorTimeout, stack);
    }
  }

  /// 2回目以降のデータの取得
  Future<void> fetchNextBatch() async {
    // API通信をしている場合、重ねて通信をしない
    if (state == PaginationState.onGoingLoading(repoPaginationState)) {
      logger.info('実行中');
      return;
    }

    state = PaginationState.onGoingLoading(repoPaginationState);

    try {
      final result = await fetchNextItems(
        repoPaginationState.param.copyWith(
          q: repoPaginationState.param.q,
          page: repoPaginationState.param.page + 1,
        ),
      );

      updateData(result);
    } on ApiErrorResponseException catch (error, stack) {
      logger.shout('APIエラー発生');
      state = PaginationState.onGoingError(repoPaginationState, error, stack);
    } on SocketException catch (error, stack) {
      logger.shout(error);
      state = PaginationState.onGoingError(
        repoPaginationState,
        i18n.errorNetwork,
        stack,
      );
    } on TimeoutException catch (error, stack) {
      logger.shout(error);
      state = PaginationState.onGoingError(
        repoPaginationState,
        i18n.errorTimeout,
        stack,
      );
    }
  }
}
