import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../repo/repoExport.dart';
import '../epidodeTileBloc/episodeTileBloc.dart';
import 'episodeTileWidgetsExport.dart';

class EpisodeTileWidget extends StatefulWidget {
  const EpisodeTileWidget({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<EpisodeTileWidget> createState() => _EpisodeTileWidget();
}

class _EpisodeTileWidget extends State<EpisodeTileWidget> {
  final _episodeTileBloc = EpisodeTileBloc(GetIt.I<AbstractCharactersRepo>());

  @override
  void initState() {
    _episodeTileBloc.add(LoadEpisodeTile(url: widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeTileBloc, EpisodeTileState>(
      bloc: _episodeTileBloc,
      builder: (context, state) {
        if (state is EpisodeTileLoaded) {
          final episode = state.episode;
          return LoadedEpisode(episode: episode);
        }
        if (state is EpisodeTileLoadingFailure) {
          return Container();
        }
        return const InitialEpisode();
      },
    );
  }
}
