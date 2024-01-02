import 'package:dio/dio.dart';

import '../export_repo.dart';

class CharacterListRepo implements AbstractCharactersRepo {
  final Dio dio;

  CharacterListRepo({required this.dio});

  @override
  Future<EpisodeTile> getEpisode(String url) async {
    final response = await dio.get(url);

    Map<String, dynamic> episodeMap = response.data;
    EpisodeTile newEpisode = EpisodeTile.fromJson(episodeMap);

    return EpisodeTile(name: newEpisode.name, episode: newEpisode.episode);
  }

  @override
  Future<List<Character>> getCharacterList() async {
    final response = await dio.get('https://rickandmortyapi.com/api/character');

    Map<String, dynamic> rootMap = response.data;
    late Map<String, dynamic> resultsMap;
    for (final element in rootMap.entries) {
      if (element.key == "results") {
        resultsMap = {element.key: element.value};
      }
    }
    Results results = Results.fromJson(resultsMap);
    final List<Character> list = results.results;

    return list;
  }
}
