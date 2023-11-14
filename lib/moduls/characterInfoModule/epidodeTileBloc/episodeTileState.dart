part of 'episodeTileBloc.dart';

abstract class EpisodeTileState {}

class EpisodeTileInitial extends EpisodeTileState {}

class EpisodeTileLoading extends EpisodeTileState {}

class EpisodeTileLoaded extends EpisodeTileState {
  EpisodeTileLoaded({required this.episode});

  final EpisodeTile episode;
}

class EpisodeTileLoadingFailure extends EpisodeTileState {
  EpisodeTileLoadingFailure({this.exception});

  final Object? exception;
}
