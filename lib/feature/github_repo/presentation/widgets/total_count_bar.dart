import 'package:flutter/material.dart';
import 'package:github_repo_search/core/extension/num_extension.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final totalCountProvider = StateProvider<int?>((_) => null);

class TotalCountBar extends ConsumerWidget {
  const TotalCountBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalCount = ref.watch(totalCountProvider);
    return SizedBox(
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerRight,
        child: totalCount != null ? Text('合計${totalCount.formatComma}件') : null,
      ),
    );
  }
}
