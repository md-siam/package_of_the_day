import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'person_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PersonModel {
  final String name;
  final String? creditCardNumber;
  final DateTime birthday;
  final Address address;

  PersonModel({
    required this.name,
    this.creditCardNumber,
    required this.birthday,
    required this.address,
  });

  /// code for generating `fromJson` & `toJson` method
  ///
  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  Map<String, dynamic> toJson() => _$PersonModelToJson(this);

  @override
  String toString() {
    return 'Person{name: $name, creditCardNumber: $creditCardNumber, birthday: $birthday, $address}';
  }
}


/// run this command to `generate` the Dart class
/// 
/// [$ flutter packages pub run build_runner build]