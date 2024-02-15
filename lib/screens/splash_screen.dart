import 'dart:async';

import 'package:final_project/layout/home_layout.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), navigateToLoginPage);
  }

  void navigateToLoginPage() {
    Navigator.pushNamedAndRemoveUntil(
        context, HomeLayout.routeName, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Image.asset(
          'assets/images/splashScreen.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
