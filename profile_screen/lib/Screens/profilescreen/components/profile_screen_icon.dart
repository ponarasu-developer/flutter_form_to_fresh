import 'package:flutter/material.dart';

Widget profileIcon(String image, Color color, String number) {
  return SizedBox(
      height: 28,
      width: 28,
      child: Stack(children: [
        Image.asset(image),
        Positioned(
          right: 0,
          child: Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(100)),
            height: 17,
            width: 17,
            child: Center(
              child: Text(
                number,
                style: const TextStyle(fontSize: 11),
              ),
            ),
          ),
        )
      ]));
}
