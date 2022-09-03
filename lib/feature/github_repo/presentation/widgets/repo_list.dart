import 'package:flutter/material.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/core/widgets/retry_button.dart';
import 'package:github_repo_search/feature/github_repo/pagination/pagination_notifier.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/repo_list.builder.dart';
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
          return data.items.isEmpty
              ? const Center(
                  child: Text('Not Found'),
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
          return RetryButton(
            title: error.toString(),
            textButton: ElevatedButton(
              onPressed: pagingController.fetchFirstBatch,
              child: const Text('再試行'),
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
