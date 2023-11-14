import 'package:dio/dio.dart';

import '../repoExport.dart';

class CharacterListRepo implements AbstractCharactersRepo {
  final Dio dio;

  CharacterListRepo({required this.dio});

  @override
  Future<EpisodeTile> getEpisode(String url) async {
    final response = await dio.get(url);

    final data = response.data as Map<String, dynamic>;
    final strName = data['name'] as String;
    final strEpisode = data['episode'] as String;
    // debugPrint(strEpisode);
    // debugPrint(strName);
    return EpisodeTile(name: strName, episode: strEpisode);
  }

  @override
  Future<List<Character>> getCharacterList() async {
    final response = await dio.get('https://rickandmortyapi.com/api/character');

    final data = response.data as Map<String, dynamic>;
    final dataResults = data['results'] as List<dynamic>;

    final list = dataResults.map((e) {
      final originMap = e["origin"] as Map<String, dynamic>;
      final origin = Origin(name: originMap["name"], url: originMap["url"]);

      final dataEpisodes = e['episode'] as List<dynamic>;
      final listEpisodes = dataEpisodes.map((e) {
        //debugPrint(e);
        return e.toString();
      }).toList();

      return Character(
        id: e['id'],
        name: e["name"],
        image: e["image"],
        status: e["status"],
        species: e["species"],
        type: e["type"],
        gender: e["gender"],
        origin: origin,
        episodes: listEpisodes,
      );
    }).toList();

    return list;
  }
}
