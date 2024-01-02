import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repo/export_repo.dart';

part 'episode_tile_event.dart';

part 'episode_tile_state.dart';

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
