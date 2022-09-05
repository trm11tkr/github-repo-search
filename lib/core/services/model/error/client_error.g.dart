// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'client_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientError _$$_ClientErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ClientError',
      json,
      ($checkedConvert) {
        final val = _$_ClientError(
          message: $checkedConvert('message', (v) => v as String),
          errors: $checkedConvert(
              'errors',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ErrorObject.fromJson(e as Map<String, dynamic>))
                  .toList()),
          documentationUrl:
              $checkedConvert('documentation_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'documentationUrl': 'documentation_url'},
    );

Map<String, dynamic> _$$_ClientErrorToJson(_$_ClientError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'documentation_url': instance.documentationUrl,
    };
