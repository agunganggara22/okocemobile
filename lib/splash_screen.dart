import 'dart:async';

import 'package:flutter/material.dart';

import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => CarouselSliderDemo()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Center(
        child: Container(
          width: 200, // Set the maximum width of the logo
          height: 200, // Set the maximum height of the logo
          child: Image.asset('assets/images/logo_ok_oce.png'), // Ganti dengan path logo Anda
        ),
      ),
    );
  }
}