// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_search_request_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepoSearchRequestParam _$RepoSearchRequestParamFromJson(
    Map<String, dynamic> json) {
  return _RepoSearchRequestParam.fromJson(json);
}

/// @nodoc
mixin _$RepoSearchRequestParam {
  String get q => throw _privateConstructorUsedError;
  String? get sort => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  @IntAndStringConverter()
  int get perPage => throw _privateConstructorUsedError;
  @IntAndStringConverter()
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoSearchRequestParamCopyWith<RepoSearchRequestParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoSearchRequestParamCopyWith<$Res> {
  factory $RepoSearchRequestParamCopyWith(RepoSearchRequestParam value,
          $Res Function(RepoSearchRequestParam) then) =
      _$RepoSearchRequestParamCopyWithImpl<$Res>;
  $Res call(
      {String q,
      String? sort,
      String? order,
      @IntAndStringConverter() int perPage,
      @IntAndStringConverter() int page});
}

/// @nodoc
class _$RepoSearchRequestParamCopyWithImpl<$Res>
    implements $RepoSearchRequestParamCopyWith<$Res> {
  _$RepoSearchRequestParamCopyWithImpl(this._value, this._then);

  final RepoSearchRequestParam _value;
  // ignore: unused_field
  final $Res Function(RepoSearchRequestParam) _then;

  @override
  $Res call({
    Object? q = freezed,
    Object? sort = freezed,
    Object? order = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      q: q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RepoSearchRequestParamCopyWith<$Res>
    implements $RepoSearchRequestParamCopyWith<$Res> {
  factory _$$_RepoSearchRequestParamCopyWith(_$_RepoSearchRequestParam value,
          $Res Function(_$_RepoSearchRequestParam) then) =
      __$$_RepoSearchRequestParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String q,
      String? sort,
      String? order,
      @IntAndStringConverter() int perPage,
      @IntAndStringConverter() int page});
}

/// @nodoc
class __$$_RepoSearchRequestParamCopyWithImpl<$Res>
    extends _$RepoSearchRequestParamCopyWithImpl<$Res>
    implements _$$_RepoSearchRequestParamCopyWith<$Res> {
  __$$_RepoSearchRequestParamCopyWithImpl(_$_RepoSearchRequestParam _value,
      $Res Function(_$_RepoSearchRequestParam) _then)
      : super(_value, (v) => _then(v as _$_RepoSearchRequestParam));

  @override
  _$_RepoSearchRequestParam get _value =>
      super._value as _$_RepoSearchRequestParam;

  @override
  $Res call({
    Object? q = freezed,
    Object? sort = freezed,
    Object? order = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_RepoSearchRequestParam(
      q: q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepoSearchRequestParam implements _RepoSearchRequestParam {
  const _$_RepoSearchRequestParam(
      {required this.q,
      this.sort,
      this.order,
      @IntAndStringConverter() this.perPage = 30,
      @IntAndStringConverter() this.page = 1});

  factory _$_RepoSearchRequestParam.fromJson(Map<String, dynamic> json) =>
      _$$_RepoSearchRequestParamFromJson(json);

  @override
  final String q;
  @override
  final String? sort;
  @override
  final String? order;
  @override
  @JsonKey()
  @IntAndStringConverter()
  final int perPage;
  @override
  @JsonKey()
  @IntAndStringConverter()
  final int page;

  @override
  String toString() {
    return 'RepoSearchRequestParam(q: $q, sort: $sort, order: $order, perPage: $perPage, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepoSearchRequestParam &&
            const DeepCollectionEquality().equals(other.q, q) &&
            const DeepCollectionEquality().equals(other.sort, sort) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(q),
      const DeepCollectionEquality().hash(sort),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$_RepoSearchRequestParamCopyWith<_$_RepoSearchRequestParam> get copyWith =>
      __$$_RepoSearchRequestParamCopyWithImpl<_$_RepoSearchRequestParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepoSearchRequestParamToJson(
      this,
    );
  }
}

abstract class _RepoSearchRequestParam implements RepoSearchRequestParam {
  const factory _RepoSearchRequestParam(
      {required final String q,
      final String? sort,
      final String? order,
      @IntAndStringConverter() final int perPage,
      @IntAndStringConverter() final int page}) = _$_RepoSearchRequestParam;

  factory _RepoSearchRequestParam.fromJson(Map<String, dynamic> json) =
      _$_RepoSearchRequestParam.fromJson;

  @override
  String get q;
  @override
  String? get sort;
  @override
  String? get order;
  @override
  @IntAndStringConverter()
  int get perPage;
  @override
  @IntAndStringConverter()
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_RepoSearchRequestParamCopyWith<_$_RepoSearchRequestParam> get copyWith =>
      throw _privateConstructorUsedError;
}
