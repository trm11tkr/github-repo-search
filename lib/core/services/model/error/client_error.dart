import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_object.dart';

part 'client_error.freezed.dart';
part 'client_error.g.dart';

@freezed
class ClientError with _$ClientError {
  const factory ClientError({
    required String message,
    List<ErrorObject>? errors,
    String? documentationUrl,
  }) = _ClientError;
  const ClientError._();

  factory ClientError.fromJson(Map<String, dynamic> json) =>
      _$ClientErrorFromJson(json);
}
