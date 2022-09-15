import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:github_repo_search/core/extension/context_extension.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/repo_list.dart';
import 'package:github_repo_search/feature/github_repo/presentation/widgets/total_count_bar.dart';
import 'package:github_repo_search/feature/github_repo/search_form/search_form.dart';
import 'package:github_repo_search/feature/github_repo/sort_option/sort_option_button.dart';

class GithubRepoListPage extends StatelessWidget {
  const GithubRepoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // キーボードのレイヤーを分ける
      resizeToAvoidBottomInset: false,
      appBar: context.isLandscape
          ? null
          : AppBar(
              title: const Text('GitHub'),
              flexibleSpace: GestureDetector(
                // タップでキーボードを閉じる
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
                children: [
                  Row(
                    children: const [
                      Expanded(flex: 9, child: SearchFrom()),
                      Gap(10),
                      Expanded(child: SortOptionButton())
                    ],
                  ),
                  const TotalCountBar(),
                  const RepoList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
