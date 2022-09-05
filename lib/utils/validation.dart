class Validation {
  Validation._();

  /// 最大文字数
  static bool isAllowedLengthMax(String text, int max) {
    return text.length <= max;
  }

  /// 最小文字数
  static bool isAllowedLengthMin(String text, int min) {
    return text.length >= min;
  }

  /// Nullと空文字列を受け付けない
  static bool hasValue(String? text) {
    return text != null && text.trim().isNotEmpty;
  }
}
