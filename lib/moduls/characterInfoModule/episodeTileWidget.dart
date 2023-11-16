import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../repo/repoExport.dart';
import 'epidodeTileBloc/episodeTileBloc.dart';

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
          return Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 38, 42, 55),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      episode.name,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      episode.episode,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ));
        }
        if (state is EpisodeTileLoadingFailure) {
          return const Center(
            child: Text("Something went wrong"),
          );
        }
        return Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 38, 42, 55),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 5, 13, 30),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 20,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 5, 13, 30),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
