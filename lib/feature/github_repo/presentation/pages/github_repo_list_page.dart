import 'package:flutter/material.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/repo_list.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/search_form.dart';

class GithubRepoListPage extends StatelessWidget {
  const GithubRepoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: const [
              SearchFrom(),
              RepoList(),
            ],
          ),
        ),
      ),
    );
  }
}
