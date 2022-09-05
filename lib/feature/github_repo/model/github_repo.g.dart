// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'github_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubRepo _$$_GithubRepoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_GithubRepo',
      json,
      ($checkedConvert) {
        final val = _$_GithubRepo(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          fullName: $checkedConvert('full_name', (v) => v as String),
          owner: $checkedConvert(
              'owner', (v) => Owner.fromJson(v as Map<String, dynamic>)),
          description:
              $checkedConvert('description', (v) => v as String? ?? ''),
          language: $checkedConvert('language', (v) => v as String?),
          stargazersCount: $checkedConvert('stargazers_count', (v) => v as int),
          watchersCount: $checkedConvert('watchers_count', (v) => v as int),
          forksCount: $checkedConvert('forks_count', (v) => v as int),
          openIssuesCount:
              $checkedConvert('open_issues_count', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'fullName': 'full_name',
        'stargazersCount': 'stargazers_count',
        'watchersCount': 'watchers_count',
        'forksCount': 'forks_count',
        'openIssuesCount': 'open_issues_count'
      },
    );

Map<String, dynamic> _$$_GithubRepoToJson(_$_GithubRepo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner.toJson(),
      'description': instance.description,
      'language': instance.language,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
    };
