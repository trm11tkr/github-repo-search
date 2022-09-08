import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/i18n/translations.g.dart';

/// ソートオプションプロバイダー
final sortOptionProvider =
    StateProvider<SortOption>((_) => SortOption.recommendation);

enum SortOption {
  /// ベストマッチ
  recommendation(),

  /// スター数順
  stars(),

  /// フォーク数順
  forks(),

  /// 更新日順(push)
  updated();

  const SortOption();

  String get label {
    switch (this) {
      case SortOption.recommendation:
        return i18n.sort_recommendation;
      case SortOption.stars:
        return i18n.sort_star;

      case SortOption.forks:
        return i18n.sort_fork;
      case SortOption.updated:
        return i18n.sort_updated;
    }
  }

  /// 実際にクエリに仕様する文字列
  String? get toQuery {
    switch (this) {
      /// recommendationはデフォルト値
      case SortOption.recommendation:
        return null;
      case SortOption.stars:
        return 'stars';

      case SortOption.forks:
        return 'forks';
      case SortOption.updated:
        return 'updated';
    }
  }
}
