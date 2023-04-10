import 'package:flutter/material.dart';

import 'Screens/splashscreen/splash_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        textTheme:
            const TextTheme(bodyMedium: TextStyle(color: Color(0xff415162))),
        unselectedWidgetColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'open sans'),
    home: const SplashScreen(),
  ));
}
