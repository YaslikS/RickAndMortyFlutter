import 'charactersListRepo/characterModel/characterModel/characterModel.dart';
import 'charactersListRepo/episodeModel/episodeTileModel.dart';

abstract class AbstractCharactersRepo {
  Future<List<Character>> getCharacterList();
  Future<EpisodeTile> getEpisode(String url);
}