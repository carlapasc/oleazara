import 'dart:async';

import 'package:oleazara/screens/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), _onShowHome);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  void _onShowHome() {
    if (mounted) {
      Navigator.of(context).pushReplacement(HomeScreen.route());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 100.0,),
          Flexible(
            flex: 2,
            child:  FractionallySizedBox(
                widthFactor: 0.7,
                child: Image.asset('images/logo.jpg'),
            ),
          ),
          Text(
            'Bienvenido a OLEAZARA', textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'SairaSemiCondensed',
              fontWeight: FontWeight.bold,


            ),
          ),
          Flexible(
            flex: 2,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }