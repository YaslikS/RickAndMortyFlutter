import 'originModel.dart';

class Character {
  final int id;
  final String name;
  final String image;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Origin origin;
  final List<String> episodes;

  Character(
      {required this.id,
      required this.name,
      required this.image,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.origin,
      required this.episodes});
}
