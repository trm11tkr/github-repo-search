import 'package:flutter/material.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/search_form.dart';
import 'package:github_repo_search/feature/github_repo/provider/repo_search_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GithubRepoListPage extends ConsumerWidget {
  const GithubRepoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final githubRepos = ref.watch(repoSearchProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SearchFrom(),
            Expanded(
              child: githubRepos.when(
                data: (data) {
                  final repositories = data.items;
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(repositories[index].fullName),
                        subtitle: Text(repositories[index].description),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: data.items.length,
                  );
                },
                error: (error, stack) => Center(
                  child: Text(error.toString()),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
