import 'package:json_annotation/json_annotation.dart';

import '../originModel/originModel.dart';

part 'characterModel.g.dart';

@JsonSerializable(explicitToJson: true)
class Character {
  final int id;
  final String name;
  final String image;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Origin origin;
  final List<String> episode;

  Character({
    required this.id,
    required this.name,
    required this.image,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.episode,
  });

  // From Json
  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  // ToJson
  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
