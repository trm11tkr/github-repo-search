import 'package:flutter/material.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/repo_list.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/total_count_bar.dart';
import 'package:github_repo_search/feature/github_repo/search_form/search_form.dart';

class GithubRepoListPage extends StatelessWidget {
  const GithubRepoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: context.isLandscape
          ? null
          : AppBar(
              title: const Text('GitHub'),
              flexibleSpace: GestureDetector(
                onTap: () {
                  context.hideKeyboard();
                },
              ),
            ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: SizedBox(
              height: context.deviceHeight * 0.8,
              child: Column(
                children: const [
                  SearchFrom(),
                  TotalCountBar(),
                  RepoList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
