import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repo/repoExport.dart';

part 'characterListEvent.dart';
part 'characterListState.dart';

class CharacterListBloc extends Bloc<CharacterListEvent, CharacterListState> {
  CharacterListBloc(this.charactersRepo) : super(CharacterListInitial()) {
    on<LoadCharacterList>((event, emit) async {
      try {
        if (state is! CharacterListLoaded) {
          emit(CharacterListLoading());
        }
        final characterList = await charactersRepo.getCharacterList();
        emit(CharacterListLoaded(characterList: characterList));
      } catch (e, st) {
        emit(CharacterListLoadingFailure(exception: e));
      } finally {
        event.completer?.complete();
      }
    });
  }

  final AbstractCharactersRepo charactersRepo;
}
