import 'package:flutter/material.dart';
import 'package:github_repo_search/gen/assets.gen.dart';
import 'package:github_repo_search/i18n/translations.g.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Flexible(child: Assets.images.notFound.image()),
            Text(i18n.notFound)
          ],
        ),
      ),
    );
  }
}
