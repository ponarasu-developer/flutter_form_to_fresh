import 'dart:async';

import 'package:flutter/material.dart';

import 'package:profile_screen/asset_manager.dart';
import '../loginscreen/login_screen.dart';
import '../homescreen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetManager.logo,
          width: MediaQuery.of(context).size.width * 0.7,
        ),
      ),
    );
  }
}
