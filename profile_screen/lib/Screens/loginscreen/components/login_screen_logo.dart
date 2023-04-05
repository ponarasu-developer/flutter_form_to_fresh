import 'package:flutter/material.dart';

SizedBox loginscreenlogo(BuildContext context, String image) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.5,
    height: MediaQuery.of(context).size.height * 0.3,
    child: Center(
      child: Image.asset(image),
    ),
  );
}
