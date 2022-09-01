// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'repo_search_request_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepoSearchRequestParam _$$_RepoSearchRequestParamFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_RepoSearchRequestParam',
      json,
      ($checkedConvert) {
        final val = _$_RepoSearchRequestParam(
          q: $checkedConvert('q', (v) => v as String),
          sort: $checkedConvert('sort', (v) => v as String?),
          order: $checkedConvert('order', (v) => v as String?),
          perPage: $checkedConvert(
              'per_page',
              (v) => v == null
                  ? 30
                  : const IntAndStringConverter().fromJson(v as String)),
          page: $checkedConvert(
              'page',
              (v) => v == null
                  ? 1
                  : const IntAndStringConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'perPage': 'per_page'},
    );

Map<String, dynamic> _$$_RepoSearchRequestParamToJson(
        _$_RepoSearchRequestParam instance) =>
    <String, dynamic>{
      'q': instance.q,
      'sort': instance.sort,
      'order': instance.order,
      'per_page': const IntAndStringConverter().toJson(instance.perPage),
      'page': const IntAndStringConverter().toJson(instance.page),
    };
