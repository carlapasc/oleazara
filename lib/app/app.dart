import 'package:oleazara/screens/screen.dart';
import 'package:flutter/material.dart';

class AppBasica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Raleway'), //  Tema Claro
//      theme: ThemeData.dark(), // Tema Obscuro
      home: SplashScreen(),
    );
  }
}