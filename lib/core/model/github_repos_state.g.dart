// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'github_repos_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubReposState _$$_GithubReposStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_GithubReposState',
      json,
      ($checkedConvert) {
        final val = _$_GithubReposState(
          totalCount: $checkedConvert('total_count', (v) => v as int),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => GithubRepo.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'totalCount': 'total_count'},
    );

Map<String, dynamic> _$$_GithubReposStateToJson(_$_GithubReposState instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
