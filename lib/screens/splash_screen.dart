//Third Party Imports
import 'dart:async';
import 'package:flutter/material.dart';

//Local Imports
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/theme/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 17, 17),
      body: Stack(children: <Widget>[
        const SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridPaper(
            color: Color.fromARGB(255, 55, 66, 79),
            interval: 100,
            subdivisions: 1,
          ),
        ),
        Center(
          child: Image.asset(
            AppImages.splashScreen,
            // height: double.infinity,
          ),
        ),
      ]),
    );
  }
}
