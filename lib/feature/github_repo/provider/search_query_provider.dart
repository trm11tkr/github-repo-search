import 'package:hooks_riverpod/hooks_riverpod.dart';

// 検索キーワード用Provider
final searchQueryProvider = StateProvider<String>((_) => 'YUMEMI');
