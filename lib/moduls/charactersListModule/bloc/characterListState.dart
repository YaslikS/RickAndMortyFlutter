part of 'characterListBloc.dart';

abstract class CharacterListState {}

class CharacterListInitial extends CharacterListState {}

class CharacterListLoading extends CharacterListState {}

class CharacterListLoaded extends CharacterListState {
  CharacterListLoaded({required this.characterList});

  final List<Character> characterList;
}

class CharacterListLoadingFailure extends CharacterListState {
  CharacterListLoadingFailure({this.exception});

  final Object? exception;
}
