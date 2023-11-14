part of 'characterListBloc.dart';

abstract class CharacterListEvent {}

class LoadCharacterList extends CharacterListEvent{
  LoadCharacterList({this.completer});

  final Completer? completer;
}