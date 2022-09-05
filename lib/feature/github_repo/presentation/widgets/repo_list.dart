import 'package:flutter/material.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/core/widgets/retry_button.dart';
import 'package:github_repo_search/feature/github_repo/pagination/pagination_notifier.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/repo_list.builder.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/total_count_bar.dart';
import 'package:github_repo_search/i18n/translations.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepoList extends ConsumerWidget {
  const RepoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ref.watch(pageProvider);
    final pagingController = ref.watch(pageProvider.notifier);
    return Expanded(
      child: page.when(
        data: (data) {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) => ref
                .watch(totalCountProvider.state)
                .update((state) => data.totalCount),
          );
          return data.items.isEmpty
              ? Center(
                  child: Text(i18n.notFound),
                )
              : RepoListBuilder(
                  repos: data.items,
                  onLoading: pagingController.fetchNextBatch,
                );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) => ref.watch(totalCountProvider.state).update((state) => null),
          );
          return RetryButton(
            title: error.toString(),
            textButton: ElevatedButton(
              onPressed: pagingController.fetchFirstBatch,
              child: Text(i18n.retry),
            ),
          );
        },
        onGoingError: (previousData, error, stack) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.showSnackBar(error.toString());
          });

          return RepoListBuilder(
            repos: previousData.items,
            onLoading: pagingController.fetchNextBatch,
          );
        },
        onGoingLoading: (previousData) {
          return RepoListBuilder(
            repos: previousData.items,
            onLoading: pagingController.fetchNextBatch,
          );
        },
      ),
    );
  }
}
