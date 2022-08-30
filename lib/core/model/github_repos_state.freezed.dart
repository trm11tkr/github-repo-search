// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubReposState _$GithubReposStateFromJson(Map<String, dynamic> json) {
  return _GithubReposState.fromJson(json);
}

/// @nodoc
mixin _$GithubReposState {
// 取得リポジトリの合計数
  int get totalCount => throw _privateConstructorUsedError; // GitHunリポジトリのリスト
  List<GithubRepo> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubReposStateCopyWith<GithubReposState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubReposStateCopyWith<$Res> {
  factory $GithubReposStateCopyWith(
          GithubReposState value, $Res Function(GithubReposState) then) =
      _$GithubReposStateCopyWithImpl<$Res>;
  $Res call({int totalCount, List<GithubRepo> items});
}

/// @nodoc
class _$GithubReposStateCopyWithImpl<$Res>
    implements $GithubReposStateCopyWith<$Res> {
  _$GithubReposStateCopyWithImpl(this._value, this._then);

  final GithubReposState _value;
  // ignore: unused_field
  final $Res Function(GithubReposState) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepo>,
    ));
  }
}

/// @nodoc
abstract class _$$_GithubReposStateCopyWith<$Res>
    implements $GithubReposStateCopyWith<$Res> {
  factory _$$_GithubReposStateCopyWith(
          _$_GithubReposState value, $Res Function(_$_GithubReposState) then) =
      __$$_GithubReposStateCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, List<GithubRepo> items});
}

/// @nodoc
class __$$_GithubReposStateCopyWithImpl<$Res>
    extends _$GithubReposStateCopyWithImpl<$Res>
    implements _$$_GithubReposStateCopyWith<$Res> {
  __$$_GithubReposStateCopyWithImpl(
      _$_GithubReposState _value, $Res Function(_$_GithubReposState) _then)
      : super(_value, (v) => _then(v as _$_GithubReposState));

  @override
  _$_GithubReposState get _value => super._value as _$_GithubReposState;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_GithubReposState(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubReposState implements _GithubReposState {
  const _$_GithubReposState(
      {required this.totalCount, required final List<GithubRepo> items})
      : _items = items;

  factory _$_GithubReposState.fromJson(Map<String, dynamic> json) =>
      _$$_GithubReposStateFromJson(json);

// 取得リポジトリの合計数
  @override
  final int totalCount;
// GitHunリポジトリのリスト
  final List<GithubRepo> _items;
// GitHunリポジトリのリスト
  @override
  List<GithubRepo> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'GithubReposState(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubReposState &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_GithubReposStateCopyWith<_$_GithubReposState> get copyWith =>
      __$$_GithubReposStateCopyWithImpl<_$_GithubReposState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubReposStateToJson(
      this,
    );
  }
}

abstract class _GithubReposState implements GithubReposState {
  const factory _GithubReposState(
      {required final int totalCount,
      required final List<GithubRepo> items}) = _$_GithubReposState;

  factory _GithubReposState.fromJson(Map<String, dynamic> json) =
      _$_GithubReposState.fromJson;

  @override // 取得リポジトリの合計数
  int get totalCount;
  @override // GitHunリポジトリのリスト
  List<GithubRepo> get items;
  @override
  @JsonKey(ignore: true)
  _$$_GithubReposStateCopyWith<_$_GithubReposState> get copyWith =>
      throw _privateConstructorUsedError;
}
