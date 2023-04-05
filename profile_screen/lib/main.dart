import 'package:flutter/material.dart';

import 'Screens/splashscreen/splash_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        unselectedWidgetColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'open sans'),
    home: const SplashScreen(),
  ));
}
