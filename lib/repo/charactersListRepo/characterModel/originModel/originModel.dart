import "package:json_annotation/json_annotation.dart";

part 'originModel.g.dart';

@JsonSerializable()
class Origin {
  final String name;
  final String url;

  Origin({
    required this.name,
    required this.url,
  });

  // From Json
  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);

  // ToJson
  Map<String, dynamic> toJson() => _$OriginToJson(this);
}
