import 'package:flutter/material.dart';
import 'package:github_repo_search/core/extension/num_extension.dart';
import 'package:github_repo_search/i18n/translations.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// トータルカウントプロバイダー
final totalCountProvider = StateProvider<int?>((_) => null);

class TotalCountBar extends ConsumerWidget {
  const TotalCountBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalCount = ref.watch(totalCountProvider);
    return SizedBox(
      width: double.infinity,
      child: Align(
        /// null(エラー時)は何も表示しない
        alignment: Alignment.centerRight,
        child: totalCount != null
            ? Text(i18n.totalRepo(totalCount: totalCount.formatComma))
            : null,
      ),
    );
  }
}
