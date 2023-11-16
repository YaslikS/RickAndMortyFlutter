import '../moduls/characterInfoModule/infoScreenExport.dart';
import '../moduls/charactersListModule/listScreenExport.dart';
import '../moduls/splashScreenModule/splashScreenExport.dart';

final routes = {
  '/': (context) => const SplashScreen(),
  '/main': (context) => const CharactersListScreen(),
  '/info': (context) => const CharacterInfoScreen(),
};
