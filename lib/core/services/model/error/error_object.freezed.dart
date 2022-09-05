// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorObject _$ErrorObjectFromJson(Map<String, dynamic> json) {
  return _ErrorObject.fromJson(json);
}

/// @nodoc
mixin _$ErrorObject {
  String get resource => throw _privateConstructorUsedError;
  String get field => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorObjectCopyWith<ErrorObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorObjectCopyWith<$Res> {
  factory $ErrorObjectCopyWith(
          ErrorObject value, $Res Function(ErrorObject) then) =
      _$ErrorObjectCopyWithImpl<$Res>;
  $Res call({String resource, String field, String code});
}

/// @nodoc
class _$ErrorObjectCopyWithImpl<$Res> implements $ErrorObjectCopyWith<$Res> {
  _$ErrorObjectCopyWithImpl(this._value, this._then);

  final ErrorObject _value;
  // ignore: unused_field
  final $Res Function(ErrorObject) _then;

  @override
  $Res call({
    Object? resource = freezed,
    Object? field = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      resource: resource == freezed
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorObjectCopyWith<$Res>
    implements $ErrorObjectCopyWith<$Res> {
  factory _$$_ErrorObjectCopyWith(
          _$_ErrorObject value, $Res Function(_$_ErrorObject) then) =
      __$$_ErrorObjectCopyWithImpl<$Res>;
  @override
  $Res call({String resource, String field, String code});
}

/// @nodoc
class __$$_ErrorObjectCopyWithImpl<$Res> extends _$ErrorObjectCopyWithImpl<$Res>
    implements _$$_ErrorObjectCopyWith<$Res> {
  __$$_ErrorObjectCopyWithImpl(
      _$_ErrorObject _value, $Res Function(_$_ErrorObject) _then)
      : super(_value, (v) => _then(v as _$_ErrorObject));

  @override
  _$_ErrorObject get _value => super._value as _$_ErrorObject;

  @override
  $Res call({
    Object? resource = freezed,
    Object? field = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_ErrorObject(
      resource: resource == freezed
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorObject extends _ErrorObject {
  const _$_ErrorObject(
      {required this.resource, required this.field, required this.code})
      : super._();

  factory _$_ErrorObject.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorObjectFromJson(json);

  @override
  final String resource;
  @override
  final String field;
  @override
  final String code;

  @override
  String toString() {
    return 'ErrorObject(resource: $resource, field: $field, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorObject &&
            const DeepCollectionEquality().equals(other.resource, resource) &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resource),
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorObjectCopyWith<_$_ErrorObject> get copyWith =>
      __$$_ErrorObjectCopyWithImpl<_$_ErrorObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorObjectToJson(
      this,
    );
  }
}

abstract class _ErrorObject extends ErrorObject {
  const factory _ErrorObject(
      {required final String resource,
      required final String field,
      required final String code}) = _$_ErrorObject;
  const _ErrorObject._() : super._();

  factory _ErrorObject.fromJson(Map<String, dynamic> json) =
      _$_ErrorObject.fromJson;

  @override
  String get resource;
  @override
  String get field;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorObjectCopyWith<_$_ErrorObject> get copyWith =>
      throw _privateConstructorUsedError;
}
