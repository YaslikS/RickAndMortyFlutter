import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
  useMaterial3: true,
  scaffoldBackgroundColor: const Color.fromARGB(255, 5, 13, 30),
  primarySwatch: Colors.yellow,
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Color.fromARGB(255, 5, 13, 30),
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700)),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: TextTheme(
      bodyMedium: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontSize: 14,
      ),
      headlineMedium: const TextStyle(
        color: Colors.white,
        fontSize: 25,
      )
  ),
);