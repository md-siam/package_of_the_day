import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  final String city;
  final String street;
  final int number;
  Address({
    required this.city,
    required this.street,
    required this.number,
  });

  factory Address.fromJson(Map<String,dynamic>json)=>
  _$AddressFromJson(json);

  Map<String, dynamic> toJson()=> _$AddressToJson(this);

  @override
  String toString() {
    return 'Address{city: $city, street: $street, number: $number}';
  }
}
