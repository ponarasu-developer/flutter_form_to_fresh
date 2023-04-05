import 'package:flutter/material.dart';

Widget registerbutton(BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.all(15),
      child: RichText(
        textAlign: TextAlign.start,
        text: const TextSpan(
            text: "New User? ",
            style: TextStyle(color: Color(0xff415162)),
            children: [
              TextSpan(
                  text: "Register Here",
                  style: TextStyle(color: Color(0xFF80B435)))
            ]),
      ),
    ),
  );
}
