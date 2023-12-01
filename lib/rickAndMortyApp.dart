import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/router/router.dart';
import 'package:rick_and_morty/theme/theme.dart';

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,             //  device_preview
      // locale: DevicePreview.locale(context), //  device_preview
      builder: DevicePreview.appBuilder,        //  device_preview
      title: 'RickAndMorty',
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      localizationsDelegates: context.localizationDelegates,  //  easy_localization
      supportedLocales: context.supportedLocales,             //  easy_localization
      locale: context.locale,                                 //  easy_localization
    );
  }
}