// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:github_repo_search/utils/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app.dart';

void main() {
  Logger.configure();

  runApp(const ProviderScope(child: App()));
}
