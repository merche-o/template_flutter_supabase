// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

  _AppUser call(
      {required String id,
      required String last_name,
      required String first_name,
      required String email,
      required String? avatar_url}) {
    return _AppUser(
      id: id,
      last_name: last_name,
      first_name: first_name,
      email: email,
      avatar_url: avatar_url,
    );
  }

  AppUser fromJson(Map<String, Object> json) {
    return AppUser.fromJson(json);
  }
}

/// @nodoc
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  String get id => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get avatar_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String last_name,
      String first_name,
      String email,
      String? avatar_url});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? last_name = freezed,
    Object? first_name = freezed,
    Object? email = freezed,
    Object? avatar_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String last_name,
      String first_name,
      String email,
      String? avatar_url});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(_AppUser _value, $Res Function(_AppUser) _then)
      : super(_value, (v) => _then(v as _AppUser));

  @override
  _AppUser get _value => super._value as _AppUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? last_name = freezed,
    Object? first_name = freezed,
    Object? email = freezed,
    Object? avatar_url = freezed,
  }) {
    return _then(_AppUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser implements _AppUser {
  const _$_AppUser(
      {required this.id,
      required this.last_name,
      required this.first_name,
      required this.email,
      required this.avatar_url});

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserFromJson(json);

  @override
  final String id;
  @override
  final String last_name;
  @override
  final String first_name;
  @override
  final String email;
  @override
  final String? avatar_url;

  @override
  String toString() {
    return 'AppUser(id: $id, last_name: $last_name, first_name: $first_name, email: $email, avatar_url: $avatar_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.last_name, last_name) ||
                const DeepCollectionEquality()
                    .equals(other.last_name, last_name)) &&
            (identical(other.first_name, first_name) ||
                const DeepCollectionEquality()
                    .equals(other.first_name, first_name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.avatar_url, avatar_url) ||
                const DeepCollectionEquality()
                    .equals(other.avatar_url, avatar_url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(last_name) ^
      const DeepCollectionEquality().hash(first_name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(avatar_url);

  @JsonKey(ignore: true)
  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserToJson(this);
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {required String id,
      required String last_name,
      required String first_name,
      required String email,
      required String? avatar_url}) = _$_AppUser;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get last_name => throw _privateConstructorUsedError;
  @override
  String get first_name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String? get avatar_url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppUserCopyWith<_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

/// @nodoc
class _$AuthDtoTearOff {
  const _$AuthDtoTearOff();

  _AuthDto call(
      {required String email,
      required String password,
      String? last_name,
      String? first_name}) {
    return _AuthDto(
      email: email,
      password: password,
      last_name: last_name,
      first_name: first_name,
    );
  }

  AuthDto fromJson(Map<String, Object> json) {
    return AuthDto.fromJson(json);
  }
}

/// @nodoc
const $AuthDto = _$AuthDtoTearOff();

/// @nodoc
mixin _$AuthDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDtoCopyWith<AuthDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res>;
  $Res call(
      {String email, String password, String? last_name, String? first_name});
}

/// @nodoc
class _$AuthDtoCopyWithImpl<$Res> implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  final AuthDto _value;
  // ignore: unused_field
  final $Res Function(AuthDto) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? last_name = freezed,
    Object? first_name = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthDtoCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$AuthDtoCopyWith(_AuthDto value, $Res Function(_AuthDto) then) =
      __$AuthDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email, String password, String? last_name, String? first_name});
}

/// @nodoc
class __$AuthDtoCopyWithImpl<$Res> extends _$AuthDtoCopyWithImpl<$Res>
    implements _$AuthDtoCopyWith<$Res> {
  __$AuthDtoCopyWithImpl(_AuthDto _value, $Res Function(_AuthDto) _then)
      : super(_value, (v) => _then(v as _AuthDto));

  @override
  _AuthDto get _value => super._value as _AuthDto;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? last_name = freezed,
    Object? first_name = freezed,
  }) {
    return _then(_AuthDto(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthDto implements _AuthDto {
  const _$_AuthDto(
      {required this.email,
      required this.password,
      this.last_name,
      this.first_name});

  factory _$_AuthDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDtoFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? last_name;
  @override
  final String? first_name;

  @override
  String toString() {
    return 'AuthDto(email: $email, password: $password, last_name: $last_name, first_name: $first_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.last_name, last_name) ||
                const DeepCollectionEquality()
                    .equals(other.last_name, last_name)) &&
            (identical(other.first_name, first_name) ||
                const DeepCollectionEquality()
                    .equals(other.first_name, first_name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(last_name) ^
      const DeepCollectionEquality().hash(first_name);

  @JsonKey(ignore: true)
  @override
  _$AuthDtoCopyWith<_AuthDto> get copyWith =>
      __$AuthDtoCopyWithImpl<_AuthDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDtoToJson(this);
  }
}

abstract class _AuthDto implements AuthDto {
  const factory _AuthDto(
      {required String email,
      required String password,
      String? last_name,
      String? first_name}) = _$_AuthDto;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$_AuthDto.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String? get last_name => throw _privateConstructorUsedError;
  @override
  String? get first_name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthDtoCopyWith<_AuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}
