class CharacterModel {
  final int id;
  final String name;
  final String birthday;
  final String status;
  final String pictureUrl;

  CharacterModel({
    required this.id,
    required this.name,
    required this.birthday,
    required this.status,
    required this.pictureUrl,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        id: json['char_id'],
        name: json['name'],
        birthday: json['birthday'],
        status: json['status'],
        pictureUrl: json['img'],
      );
}
