//Third Part Imports
import 'package:flutter/material.dart';

//Local Imports
import 'package:portfolio/screens/form_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/splash_screen.dart';
import 'routes.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        formRoute: (context) => const FormScreen(),
        homeRoute: (context) => const HomeScreen(),
       
      },
      debugShowCheckedModeBanner: false,
      title: "MyFaduGame",
      home: const SplashScreen(),
    );
  }
}