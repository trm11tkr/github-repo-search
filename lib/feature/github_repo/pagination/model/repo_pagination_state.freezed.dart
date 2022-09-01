// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoPaginationState {
  int get totalCount => throw _privateConstructorUsedError;
  List<GithubRepo> get items => throw _privateConstructorUsedError;
  RepoSearchRequestParam get param => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoPaginationStateCopyWith<RepoPaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoPaginationStateCopyWith<$Res> {
  factory $RepoPaginationStateCopyWith(
          RepoPaginationState value, $Res Function(RepoPaginationState) then) =
      _$RepoPaginationStateCopyWithImpl<$Res>;
  $Res call(
      {int totalCount, List<GithubRepo> items, RepoSearchRequestParam param});

  $RepoSearchRequestParamCopyWith<$Res> get param;
}

/// @nodoc
class _$RepoPaginationStateCopyWithImpl<$Res>
    implements $RepoPaginationStateCopyWith<$Res> {
  _$RepoPaginationStateCopyWithImpl(this._value, this._then);

  final RepoPaginationState _value;
  // ignore: unused_field
  final $Res Function(RepoPaginationState) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? items = freezed,
    Object? param = freezed,
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
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as RepoSearchRequestParam,
    ));
  }

  @override
  $RepoSearchRequestParamCopyWith<$Res> get param {
    return $RepoSearchRequestParamCopyWith<$Res>(_value.param, (value) {
      return _then(_value.copyWith(param: value));
    });
  }
}

/// @nodoc
abstract class _$$_RepoPaginationStateCopyWith<$Res>
    implements $RepoPaginationStateCopyWith<$Res> {
  factory _$$_RepoPaginationStateCopyWith(_$_RepoPaginationState value,
          $Res Function(_$_RepoPaginationState) then) =
      __$$_RepoPaginationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalCount, List<GithubRepo> items, RepoSearchRequestParam param});

  @override
  $RepoSearchRequestParamCopyWith<$Res> get param;
}

/// @nodoc
class __$$_RepoPaginationStateCopyWithImpl<$Res>
    extends _$RepoPaginationStateCopyWithImpl<$Res>
    implements _$$_RepoPaginationStateCopyWith<$Res> {
  __$$_RepoPaginationStateCopyWithImpl(_$_RepoPaginationState _value,
      $Res Function(_$_RepoPaginationState) _then)
      : super(_value, (v) => _then(v as _$_RepoPaginationState));

  @override
  _$_RepoPaginationState get _value => super._value as _$_RepoPaginationState;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? items = freezed,
    Object? param = freezed,
  }) {
    return _then(_$_RepoPaginationState(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepo>,
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as RepoSearchRequestParam,
    ));
  }
}

/// @nodoc

class _$_RepoPaginationState implements _RepoPaginationState {
  const _$_RepoPaginationState(
      {this.totalCount = 0,
      final List<GithubRepo> items = const <GithubRepo>[],
      required this.param})
      : _items = items;

  @override
  @JsonKey()
  final int totalCount;
  final List<GithubRepo> _items;
  @override
  @JsonKey()
  List<GithubRepo> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final RepoSearchRequestParam param;

  @override
  String toString() {
    return 'RepoPaginationState(totalCount: $totalCount, items: $items, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepoPaginationState &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.param, param));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(param));

  @JsonKey(ignore: true)
  @override
  _$$_RepoPaginationStateCopyWith<_$_RepoPaginationState> get copyWith =>
      __$$_RepoPaginationStateCopyWithImpl<_$_RepoPaginationState>(
          this, _$identity);
}

abstract class _RepoPaginationState implements RepoPaginationState {
  const factory _RepoPaginationState(
      {final int totalCount,
      final List<GithubRepo> items,
      required final RepoSearchRequestParam param}) = _$_RepoPaginationState;

  @override
  int get totalCount;
  @override
  List<GithubRepo> get items;
  @override
  RepoSearchRequestParam get param;
  @override
  @JsonKey(ignore: true)
  _$$_RepoPaginationStateCopyWith<_$_RepoPaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}
