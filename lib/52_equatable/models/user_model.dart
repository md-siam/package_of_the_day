import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String urlImage;

  const User({
    required this.name,
    required this.urlImage,
  });

  @override
  List<Object?> get props => [name, urlImage];
}
