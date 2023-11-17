import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../repo/repoExport.dart';
import 'bloc/characterListBloc.dart';
import 'widgets/characterListWidgetsExport.dart';

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
        leading: null,
        title: Text(
          "Characters",
          style: theme.textTheme.displaySmall,
        ),
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
              return LoadedCharacterList(state: state);
            }
            if (state is CharacterListLoadingFailure) {
              return FailureLoadingCharacterList();
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
