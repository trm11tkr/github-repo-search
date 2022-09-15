import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/feature/github_repo/sort_option/sort_option.dart';
import 'package:github_repo_search/i18n/translations.g.dart';

class SortOptionButton extends ConsumerWidget {
  const SortOptionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortOption = ref.watch(sortOptionProvider);
    final sortOptionController = ref.watch(sortOptionProvider.state);
    return IconButton(
      icon: const Icon(Icons.sort),
      onPressed: () async {
        final result = context.isIOS
            // iOS
            ? await showConfirmationDialog<SortOption>(
                context: context,
                title: i18n.sort,
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
              )
            // Android
            : await showModalBottomSheet<SortOption>(
                backgroundColor: context.scaffoldBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                context: context,
                builder: (context) {
                  SortOption? selectedOption = sortOption;

                  // リストでオプションリストを定義
                  final optionList = SortOption.values
                      .map(
                        (sort) => AlertDialogAction(
                          label: sort.label,
                          key: sort,
                        ),
                      )
                      .toList();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          i18n.sort,
                          textAlign: TextAlign.start,
                          style: context.subTitleStyle,
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            // 現在のソートオプションはアイコンでわかりやすく
                            final optionTile =
                                optionList[index].label == sortOption.label
                                    ? Row(
                                        children: [
                                          Text(
                                            optionList[index].label,
                                            style: context.bodyStyle,
                                          ),
                                          const Gap(5),
                                          Icon(
                                            Icons.check,
                                            color: context.bodyStyle.color,
                                          ),
                                        ],
                                      )
                                    : Text(optionList[index].label);
                            return ListTile(
                              title: optionTile,
                              onTap: () {
                                if (optionList[index].key != sortOption) {
                                  selectedOption = optionList[index].key;
                                } else {
                                  selectedOption = null;
                                }
                                // 選択された値を返して、シートを閉じる
                                Navigator.of(context).pop(selectedOption);
                              },
                            );
                          },
                          itemCount: optionList.length,
                        ),
                      ),
                    ],
                  );
                },
              );

        // ソートオプションが変更された場合プロバイダーを更新
        if (result != null) {
          sortOptionController.update((state) => result);
        }
      },
    );
  }
}
