import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String last_name,
    required String first_name,
    required String email,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}

@freezed
class AuthDto with _$AuthDto {
  const factory AuthDto({
    required String email,
    required String password,
    String? last_name,
    String? first_name,
  }) = _AuthDto;

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}
