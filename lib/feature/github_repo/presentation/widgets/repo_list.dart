import 'package:flutter/material.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/repo_list.builder.dart';
import 'package:github_repo_search/feature/github_repo/provider/repo_search_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepoList extends ConsumerWidget {
  const RepoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(repoSearchProvider);
    return Expanded(
      child: searchResult.when(
        data: (data) {
          return data.items.isEmpty
              ? const Center(
                  child: Text('Not Found'),
                )
              : RepoListBuilder(
                  repos: data.items,
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
      ),
    );
  }
}
