// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'error_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorObject _$$_ErrorObjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ErrorObject',
      json,
      ($checkedConvert) {
        final val = _$_ErrorObject(
          resource: $checkedConvert('resource', (v) => v as String),
          field: $checkedConvert('field', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ErrorObjectToJson(_$_ErrorObject instance) =>
    <String, dynamic>{
      'resource': instance.resource,
      'field': instance.field,
      'code': instance.code,
    };
