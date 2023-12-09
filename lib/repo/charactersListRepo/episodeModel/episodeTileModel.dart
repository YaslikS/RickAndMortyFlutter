import 'package:json_annotation/json_annotation.dart';

part 'episodeTileModel.g.dart';

@JsonSerializable()
class EpisodeTile {
  final String name;
  final String episode;

  EpisodeTile({
    required this.name,
    required this.episode,
  });

  // From Json
  factory EpisodeTile.fromJson(Map<String, dynamic> json) => _$EpisodeTileFromJson(json);

  // ToJson
  Map<String, dynamic> toJson() => _$EpisodeTileToJson(this);
}
