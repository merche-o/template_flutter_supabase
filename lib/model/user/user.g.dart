// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      id: json['id'] as String,
      last_name: json['last_name'] as String,
      first_name: json['first_name'] as String,
      email: json['email'] as String,
      avatar_url: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last_name': instance.last_name,
      'first_name': instance.first_name,
      'email': instance.email,
      'avatar_url': instance.avatar_url,
    };

_$_AuthDto _$$_AuthDtoFromJson(Map<String, dynamic> json) => _$_AuthDto(
      email: json['email'] as String,
      password: json['password'] as String,
      last_name: json['last_name'] as String?,
      first_name: json['first_name'] as String?,
    );

Map<String, dynamic> _$$_AuthDtoToJson(_$_AuthDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'last_name': instance.last_name,
      'first_name': instance.first_name,
    };
