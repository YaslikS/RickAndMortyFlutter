import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../repo/repoExport.dart';
import 'bloc/characterListBloc.dart';
import 'charactersListTile.dart';

class CharactersListScreen extends StatefulWidget {
  const CharactersListScreen({
    super.key,
  });

  @override
  State<CharactersListScreen> createState() => _CharactersListScreenPageState();
}

class _CharactersListScreenPageState extends State<CharactersListScreen> {
  final _characterListBloc =
      CharacterListBloc(GetIt.I<AbstractCharactersRepo>());

  @override
  void initState() {
    _characterListBloc.add(LoadCharacterList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Characters"),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          final completer = Completer();
          _characterListBloc.add(LoadCharacterList(completer: completer));
          return completer.future;
        },
        child: BlocBuilder<CharacterListBloc, CharacterListState>(
          bloc: _characterListBloc,
          builder: (context, state) {
            if (state is CharacterListLoaded) {
              return GridView.builder(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 12, left: 6, right: 6),
                itemCount: state.characterList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1.2,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, i) {
                  final characterItem = state.characterList[i];
                  return CharacterListTile(
                    characterItem: characterItem,
                    itemTile: i,
                  );
                },
              );
            }
            if (state is CharacterListLoadingFailure) {
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Something went wrong',
                    style: theme.textTheme.headlineMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  Text(
                    'Please try again later',
                    style: theme.textTheme.labelSmall?.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        _characterListBloc.add(LoadCharacterList());
                      },
                      child: const Text('Try again')),
                ],
              ));
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
