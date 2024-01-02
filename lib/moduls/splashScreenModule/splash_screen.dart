import 'package:flutter/material.dart';
import 'package:rick_and_morty/router/export_router.dart';

import '../../theme/enums.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1000), () {
      AutoRouter.of(context).replace(const CharactersListRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(Paddings.sixteen),
            child: Image.asset(
              "lib/asset/RaM_stars.png",
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/asset/RaM_Name.png",
                width: Sizes.twoHundred,
              ),
              SizedBox(height: Spaces.thirtyTwo),
              Image.asset(
                "lib/asset/RaM_Portal.png",
                width: Sizes.twoHundred,
              ),
              SizedBox(height: Spaces.thirtyTwo),
            ],
          )
        ],
      ),
    ));
  }
}
