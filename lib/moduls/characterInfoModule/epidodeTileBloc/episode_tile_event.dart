part of 'episode_tile_bloc.dart';

abstract class EpisodeTileEvent {}

class LoadEpisodeTile extends EpisodeTileEvent{
  LoadEpisodeTile({required this.url});

  final String url;
}