import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repo/repoExport.dart';

part 'episodeTileEvent.dart';

part 'episodeTileState.dart';

class EpisodeTileBloc extends Bloc<EpisodeTileEvent, EpisodeTileState> {
  EpisodeTileBloc(this.charactersRepo) : super(EpisodeTileInitial()) {
    on<LoadEpisodeTile>((event, emit) async {
      try {
        if (state is! EpisodeTileLoaded) {
          emit(EpisodeTileLoading());
        }
        final episode = await charactersRepo.getEpisode(event.url);
        emit(EpisodeTileLoaded(episode: episode));
      } catch (e, st) {
        emit(EpisodeTileLoadingFailure(exception: e));
      }
    });
  }

  final AbstractCharactersRepo charactersRepo;
}
