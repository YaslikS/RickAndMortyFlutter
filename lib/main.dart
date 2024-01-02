import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/asset/translations/translationsExport.dart';
import 'package:rick_and_morty/repo/export_repo.dart';

import 'rick_and_morty_app.dart';

void main() async {
  GetIt.I.registerLazySingleton<AbstractCharactersRepo>(
      () => CharacterListRepo(dio: Dio()));

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ru')],
      path: 'lib/asset/translations',
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const RickAndMortyApp(),
    ),
  );

  // runApp(DevicePreview(
  //   enabled: true,
  //   builder: (context) => RickAndMortyApp(),
  // ));
}
