// Flutter imports:
import 'package:flutter/material.dart';

// Packages imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'app.dart';
import 'package:github_repo_search/utils/logger.dart';

void main() {
  Logger.configure();

  runApp(const ProviderScope(child: App()));
}
