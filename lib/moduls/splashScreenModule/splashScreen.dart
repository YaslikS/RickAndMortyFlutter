import 'package:flutter/material.dart';

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
      Navigator.of(context).pushReplacementNamed(
        '/main',
      );
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
              padding: const EdgeInsets.all(16.0),
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
                  width: 200,
                ),
                const SizedBox(height: 32),
                Image.asset(
                  "lib/asset/RaM_Portal.png",
                  width: 200,
                ),
                const SizedBox(height: 64),
              ],
            )
          ],
        ),
      )
    );
  }
}
