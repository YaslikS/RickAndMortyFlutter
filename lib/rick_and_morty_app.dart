import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/theme/theme.dart';

import 'router/export_router.dart';

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      useInheritedMediaQuery: true, //  device_preview
      // locale: DevicePreview.locale(context), //  device_preview
      builder: DevicePreview.appBuilder, //  device_preview
      title: 'RickAndMorty',
      // routes: routes,
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      localizationsDelegates: context.localizationDelegates, //  easy_localization
      supportedLocales: context.supportedLocales, //  easy_localization
      locale: context.locale, //  easy_localization
    );
  }
}
