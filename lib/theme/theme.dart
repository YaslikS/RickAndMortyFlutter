import 'package:flutter/material.dart';
import 'package:rick_and_morty/theme/enums.dart';

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: RaM_Colors.green),
  useMaterial3: true,
  scaffoldBackgroundColor: RaM_Colors.background,
  appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: RaM_Colors.white),
      backgroundColor: RaM_Colors.background,
      titleTextStyle: TextStyle(
        color: RaM_Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      )),
  listTileTheme: ListTileThemeData(iconColor: RaM_Colors.white),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: RaM_Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: RaM_Colors.white,
      fontSize: 15,
    ),
    headlineMedium: TextStyle(
      color: RaM_Colors.white,
      fontSize: 30,
    ),
  ),
);
