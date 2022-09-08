import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:github_repo_search/feature/github_repo/sort_option/sort_option.dart';

class SortOptionBar extends ConsumerWidget {
  const SortOptionBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortOption = ref.watch(sortOptionProvider);
    final sortOptionController = ref.watch(sortOptionProvider.state);
    return TextButton(
      style: TextButton.styleFrom(side: const BorderSide()),
      child: Row(
        children: [
          Text(sortOption.label),
          const Gap(5),
          const Icon(Icons.sort),
        ],
      ),
      onPressed: () async {
        final result = await showConfirmationDialog<SortOption>(
          context: context,
          title: '並び替え',
          actions: [
            ...SortOption.values
                .map((sort) => AlertDialogAction(label: sort.label, key: sort))
                .toList()
          ],
          initialSelectedActionKey: sortOption,
        );
        if (result != null) {
          sortOptionController.update((state) => result);
        }
      },
    );
  }
}
