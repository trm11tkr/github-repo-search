import 'package:flutter/material.dart';
import 'package:github_repo_search/feature/github_repo/pagination/pagination_notifier.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/repo_list.builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepoList extends ConsumerWidget {
  const RepoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ref.watch(pageProvider);
    final onLoadFunction = ref.watch(pageProvider.notifier).fetchNextBatch;
    return Expanded(
      child: page.when(
        data: (data) {
          return data.items.isEmpty
              ? const Center(
                  child: Text('Not Found'),
                )
              : RepoListBuilder(
                  repos: data.items,
                  onLoading: onLoadFunction,
                );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) {
          return Center(
            child: Text(
              error.toString(),
            ),
          );
        },
        onGoingError: (previousData, e, stk) {
          return RepoListBuilder(
            repos: previousData.items,
            onLoading: onLoadFunction,
          );
        },
        onGoingLoading: (previousData) {
          return RepoListBuilder(
            repos: previousData.items,
            onLoading: onLoadFunction,
          );
        },
      ),
    );
  }
}
