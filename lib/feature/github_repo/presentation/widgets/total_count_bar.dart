import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/core/extension/num_extension.dart';
import 'package:github_repo_search/feature/github_repo/pagination/pagination_notifier.dart';
import 'package:github_repo_search/i18n/translations.g.dart';

/// レポジトリ合計数プロバイダー

// pageProviderからの取得データによって更新
// 初回エラー、初回ローディング時はnullを返却
// ページング中エラー、ページング中ローディング時は前回値を返却
final totalCountProvider = StateProvider<int?>((ref) {
  final totalCount = ref.watch(pageProvider).whenOrNull(
        data: (data) => data.totalCount,
        // 前回値を渡す
        onGoingError: (previousData, e, stk) => previousData.totalCount,
        // 前回値を渡す
        onGoingLoading: (previousData) => previousData.totalCount,
      );

  return totalCount;
});

class TotalCountBar extends ConsumerWidget {
  const TotalCountBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalCount = ref.watch(totalCountProvider);
    return SizedBox(
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerRight,
        // エラー時にはnullが渡る(表示しない)
        child: totalCount != null
            ? Text(i18n.totalRepo(totalCount: totalCount.formatComma))
            : null,
      ),
    );
  }
}
