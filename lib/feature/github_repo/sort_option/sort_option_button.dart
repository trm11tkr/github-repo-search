import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/feature/github_repo/sort_option/sort_option.dart';

class SortOptionButton extends ConsumerWidget {
  const SortOptionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortOption = ref.watch(sortOptionProvider);
    final sortOptionController = ref.watch(sortOptionProvider.state);
    return SizedBox(
      height: 65,
      child: IconButton(
        icon: const Icon(Icons.sort),
        onPressed: () async {
          final result = await showConfirmationDialog<SortOption>(
            context: context,
            title: '並び替え',
            actions: [
              ...SortOption.values
                  .map(
                    (sort) => AlertDialogAction(
                      label: sort.label,
                      key: sort,
                    ),
                  )
                  .toList()
            ],
            initialSelectedActionKey: sortOption,
          );
          if (result != null) {
            sortOptionController.update((state) => result);
          }
        },
      ),
    );
  }
}
