import 'dart:async';

import 'package:github_repo_search/core/exceptions/api_error_response_exception.dart';
import 'package:github_repo_search/core/model/github_repos_state.dart';
import 'package:github_repo_search/core/model/pagination_state.dart';
import 'package:github_repo_search/core/services/api/repo_search_client.dart';
import 'package:github_repo_search/core/services/model/repo_search_request_param.dart';
import 'package:github_repo_search/feature/github_repo/pagination/model/repo_pagination_state.dart';
import 'package:github_repo_search/feature/github_repo/provider/search_query_provider.dart';
import 'package:github_repo_search/utils/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ページングプロバイダー
final pageProvider = StateNotifierProvider<PaginationNotifier,
    PaginationState<RepoPaginationState>>(
  (ref) {
    final searchQuery = ref.watch(searchQueryProvider);
    final queryParam = RepoSearchRequestParam(q: searchQuery, perPage: 10);
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

  final Future<RepoPaginationState> Function(RepoSearchRequestParam? param)
      fetchNextItems;
  RepoPaginationState repoPaginationState;

  void updateData(RepoPaginationState result) {
    repoPaginationState = repoPaginationState.copyWith(
      totalCount: result.totalCount,
      items: repoPaginationState.items + result.items,
      param: result.param,
    );
    state = PaginationState.data(repoPaginationState);
  }

  Future<void> fetchFirstBatch() async {
    try {
      state = const PaginationState.loading();

      final result = await fetchNextItems(null);
      updateData(result);
    } on ApiErrorResponseException catch (error, stack) {
      state = PaginationState.error(error, stack);
    }
  }

  Future<void> fetchNextBatch() async {
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
    }
  }
}
