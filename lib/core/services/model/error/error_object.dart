import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_object.freezed.dart';
part 'error_object.g.dart';

@freezed
class ErrorObject with _$ErrorObject {
  const factory ErrorObject({
    required String resource,
    required String field,
    required String code,
  }) = _ErrorObject;
  const ErrorObject._();

  factory ErrorObject.fromJson(Map<String, dynamic> json) =>
      _$ErrorObjectFromJson(json);
}
