import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        return 'オススメ順';
      case SortOption.stars:
        return 'スター';

      case SortOption.forks:
        return 'フォーク';
      case SortOption.updated:
        return '更新日';
    }
  }

  String? get toQuery {
    switch (this) {
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
