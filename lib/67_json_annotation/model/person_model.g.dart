// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) => PersonModel(
      name: json['name'] as String,
      creditCardNumber: json['creditCardNumber'] as String?,
      birthday: DateTime.parse(json['birthday'] as String),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonModelToJson(PersonModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'creditCardNumber': instance.creditCardNumber,
      'birthday': instance.birthday.toIso8601String(),
      'address': instance.address.toJson(),
    };
