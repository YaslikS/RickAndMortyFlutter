import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/repo/repoExport.dart';
import 'rickAndMortyApp.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractCharactersRepo>(() =>
      CharacterListRepo(dio: Dio()));

  runApp(const RickAndMortyApp());
}



