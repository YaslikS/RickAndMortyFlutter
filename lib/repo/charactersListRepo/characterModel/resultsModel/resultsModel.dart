import 'package:json_annotation/json_annotation.dart';

import '../characterModel/characterModel.dart';

part 'resultsModel.g.dart';

@JsonSerializable(explicitToJson: true)
class Results {
  final List<Character> results;

  Results({
    required this.results,
  });

  // From Json
  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  // ToJson
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
