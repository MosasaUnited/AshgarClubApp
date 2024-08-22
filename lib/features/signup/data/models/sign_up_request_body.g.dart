// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      name: json['name'] as String,
      memberId: json['memberId'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'memberId': instance.memberId,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
