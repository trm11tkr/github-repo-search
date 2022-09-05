import 'package:intl/intl.dart';

extension NumExtension on num {
  /// ３桁ごとにカンマで区切る(ex:123,456,789)
  String get formatComma => NumberFormat().format(this);

  /// 数値の単位をアルファベットで表示
  String get withAlphabet => NumberFormat.compact().format(this);
}
