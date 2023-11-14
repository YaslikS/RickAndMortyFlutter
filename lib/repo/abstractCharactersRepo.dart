import 'charactersListRepo/characterModel/tileCharactersModel.dart';
import 'charactersListRepo/episodeModel/episodeTileModel.dart';

abstract class AbstractCharactersRepo {
  Future<List<Character>> getCharacterList();
  Future<EpisodeTile> getEpisode(String url);
}