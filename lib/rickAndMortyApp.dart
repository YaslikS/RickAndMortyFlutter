import 'package:flutter/material.dart';
import 'package:rick_and_morty/router/router.dart';
import 'package:rick_and_morty/theme/theme.dart';

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RickAndMorty',
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
    );
  }
}