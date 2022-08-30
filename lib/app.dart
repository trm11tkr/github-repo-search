// Flutter imports:
import 'package:flutter/material.dart';

// Packages imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:github_repo_search/core/model/github_repos_state.dart';
import 'package:github_repo_search/core/services/api/repo_search_client.dart';
import 'package:github_repo_search/utils/logger.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Search App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub'),
      ),
      body: const Center(
        child: Text('Let\'s start the program!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final items = await ref.watch(repoSearchClientProvider).get(
            queryParameters: <String, dynamic>{'q': 'YUMEMI'},
            fromJson: GithubReposState.fromJson,
          );
          logger.info(items);
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
