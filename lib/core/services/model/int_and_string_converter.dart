import 'package:freezed_annotation/freezed_annotation.dart';

class IntAndStringConverter implements JsonConverter<int, String> {
  const IntAndStringConverter();

  @override
  int fromJson(String value) => int.parse(value);

  @override
  String toJson(int value) {
    return value.toString();
  }
}
