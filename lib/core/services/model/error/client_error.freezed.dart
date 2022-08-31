// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientError _$ClientErrorFromJson(Map<String, dynamic> json) {
  return _ClientError.fromJson(json);
}

/// @nodoc
mixin _$ClientError {
  String get message => throw _privateConstructorUsedError;
  List<ErrorObject>? get errors => throw _privateConstructorUsedError;
  String? get documentationUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientErrorCopyWith<ClientError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientErrorCopyWith<$Res> {
  factory $ClientErrorCopyWith(
          ClientError value, $Res Function(ClientError) then) =
      _$ClientErrorCopyWithImpl<$Res>;
  $Res call(
      {String message, List<ErrorObject>? errors, String? documentationUrl});
}

/// @nodoc
class _$ClientErrorCopyWithImpl<$Res> implements $ClientErrorCopyWith<$Res> {
  _$ClientErrorCopyWithImpl(this._value, this._then);

  final ClientError _value;
  // ignore: unused_field
  final $Res Function(ClientError) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
    Object? documentationUrl = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorObject>?,
      documentationUrl: documentationUrl == freezed
          ? _value.documentationUrl
          : documentationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ClientErrorCopyWith<$Res>
    implements $ClientErrorCopyWith<$Res> {
  factory _$$_ClientErrorCopyWith(
          _$_ClientError value, $Res Function(_$_ClientError) then) =
      __$$_ClientErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String message, List<ErrorObject>? errors, String? documentationUrl});
}

/// @nodoc
class __$$_ClientErrorCopyWithImpl<$Res> extends _$ClientErrorCopyWithImpl<$Res>
    implements _$$_ClientErrorCopyWith<$Res> {
  __$$_ClientErrorCopyWithImpl(
      _$_ClientError _value, $Res Function(_$_ClientError) _then)
      : super(_value, (v) => _then(v as _$_ClientError));

  @override
  _$_ClientError get _value => super._value as _$_ClientError;

  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
    Object? documentationUrl = freezed,
  }) {
    return _then(_$_ClientError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorObject>?,
      documentationUrl: documentationUrl == freezed
          ? _value.documentationUrl
          : documentationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientError extends _ClientError {
  const _$_ClientError(
      {required this.message,
      final List<ErrorObject>? errors,
      this.documentationUrl})
      : _errors = errors,
        super._();

  factory _$_ClientError.fromJson(Map<String, dynamic> json) =>
      _$$_ClientErrorFromJson(json);

  @override
  final String message;
  final List<ErrorObject>? _errors;
  @override
  List<ErrorObject>? get errors {
    final value = _errors;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? documentationUrl;

  @override
  String toString() {
    return 'ClientError(message: $message, errors: $errors, documentationUrl: $documentationUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality()
                .equals(other.documentationUrl, documentationUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(documentationUrl));

  @JsonKey(ignore: true)
  @override
  _$$_ClientErrorCopyWith<_$_ClientError> get copyWith =>
      __$$_ClientErrorCopyWithImpl<_$_ClientError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientErrorToJson(
      this,
    );
  }
}

abstract class _ClientError extends ClientError {
  const factory _ClientError(
      {required final String message,
      final List<ErrorObject>? errors,
      final String? documentationUrl}) = _$_ClientError;
  const _ClientError._() : super._();

  factory _ClientError.fromJson(Map<String, dynamic> json) =
      _$_ClientError.fromJson;

  @override
  String get message;
  @override
  List<ErrorObject>? get errors;
  @override
  String? get documentationUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ClientErrorCopyWith<_$_ClientError> get copyWith =>
      throw _privateConstructorUsedError;
}
