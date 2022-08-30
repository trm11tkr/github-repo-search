// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepo _$GithubRepoFromJson(Map<String, dynamic> json) {
  return _GithubRepo.fromJson(json);
}

/// @nodoc
mixin _$GithubRepo {
// リポジトリID
  int get id => throw _privateConstructorUsedError; // リポジトリ名
  String get name => throw _privateConstructorUsedError; // オーナーネーム+リポジトリ名
  String get fullName => throw _privateConstructorUsedError; // オーナー情報
  Owner get owner => throw _privateConstructorUsedError; // リポジトリの説明
  String get description => throw _privateConstructorUsedError; // プロジェクト言語
  String? get language => throw _privateConstructorUsedError; // Star数
  int get stargazersCount => throw _privateConstructorUsedError; // Watch数
  int get watchersCount => throw _privateConstructorUsedError; // Fork数
  int get forksCount => throw _privateConstructorUsedError; // Issue数
  int get openIssuesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoCopyWith<GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoCopyWith<$Res> {
  factory $GithubRepoCopyWith(
          GithubRepo value, $Res Function(GithubRepo) then) =
      _$GithubRepoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String fullName,
      Owner owner,
      String description,
      String? language,
      int stargazersCount,
      int watchersCount,
      int forksCount,
      int openIssuesCount});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$GithubRepoCopyWithImpl<$Res> implements $GithubRepoCopyWith<$Res> {
  _$GithubRepoCopyWithImpl(this._value, this._then);

  final GithubRepo _value;
  // ignore: unused_field
  final $Res Function(GithubRepo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? owner = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
    Object? openIssuesCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: watchersCount == freezed
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: openIssuesCount == freezed
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_GithubRepoCopyWith<$Res>
    implements $GithubRepoCopyWith<$Res> {
  factory _$$_GithubRepoCopyWith(
          _$_GithubRepo value, $Res Function(_$_GithubRepo) then) =
      __$$_GithubRepoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String fullName,
      Owner owner,
      String description,
      String? language,
      int stargazersCount,
      int watchersCount,
      int forksCount,
      int openIssuesCount});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_GithubRepoCopyWithImpl<$Res> extends _$GithubRepoCopyWithImpl<$Res>
    implements _$$_GithubRepoCopyWith<$Res> {
  __$$_GithubRepoCopyWithImpl(
      _$_GithubRepo _value, $Res Function(_$_GithubRepo) _then)
      : super(_value, (v) => _then(v as _$_GithubRepo));

  @override
  _$_GithubRepo get _value => super._value as _$_GithubRepo;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? owner = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
    Object? openIssuesCount = freezed,
  }) {
    return _then(_$_GithubRepo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: watchersCount == freezed
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: openIssuesCount == freezed
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubRepo implements _GithubRepo {
  const _$_GithubRepo(
      {required this.id,
      required this.name,
      required this.fullName,
      required this.owner,
      this.description = '',
      this.language,
      required this.stargazersCount,
      required this.watchersCount,
      required this.forksCount,
      required this.openIssuesCount});

  factory _$_GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$$_GithubRepoFromJson(json);

// リポジトリID
  @override
  final int id;
// リポジトリ名
  @override
  final String name;
// オーナーネーム+リポジトリ名
  @override
  final String fullName;
// オーナー情報
  @override
  final Owner owner;
// リポジトリの説明
  @override
  @JsonKey()
  final String description;
// プロジェクト言語
  @override
  final String? language;
// Star数
  @override
  final int stargazersCount;
// Watch数
  @override
  final int watchersCount;
// Fork数
  @override
  final int forksCount;
// Issue数
  @override
  final int openIssuesCount;

  @override
  String toString() {
    return 'GithubRepo(id: $id, name: $name, fullName: $fullName, owner: $owner, description: $description, language: $language, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.stargazersCount, stargazersCount) &&
            const DeepCollectionEquality()
                .equals(other.watchersCount, watchersCount) &&
            const DeepCollectionEquality()
                .equals(other.forksCount, forksCount) &&
            const DeepCollectionEquality()
                .equals(other.openIssuesCount, openIssuesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(stargazersCount),
      const DeepCollectionEquality().hash(watchersCount),
      const DeepCollectionEquality().hash(forksCount),
      const DeepCollectionEquality().hash(openIssuesCount));

  @JsonKey(ignore: true)
  @override
  _$$_GithubRepoCopyWith<_$_GithubRepo> get copyWith =>
      __$$_GithubRepoCopyWithImpl<_$_GithubRepo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRepoToJson(
      this,
    );
  }
}

abstract class _GithubRepo implements GithubRepo {
  const factory _GithubRepo(
      {required final int id,
      required final String name,
      required final String fullName,
      required final Owner owner,
      final String description,
      final String? language,
      required final int stargazersCount,
      required final int watchersCount,
      required final int forksCount,
      required final int openIssuesCount}) = _$_GithubRepo;

  factory _GithubRepo.fromJson(Map<String, dynamic> json) =
      _$_GithubRepo.fromJson;

  @override // リポジトリID
  int get id;
  @override // リポジトリ名
  String get name;
  @override // オーナーネーム+リポジトリ名
  String get fullName;
  @override // オーナー情報
  Owner get owner;
  @override // リポジトリの説明
  String get description;
  @override // プロジェクト言語
  String? get language;
  @override // Star数
  int get stargazersCount;
  @override // Watch数
  int get watchersCount;
  @override // Fork数
  int get forksCount;
  @override // Issue数
  int get openIssuesCount;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepoCopyWith<_$_GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}
