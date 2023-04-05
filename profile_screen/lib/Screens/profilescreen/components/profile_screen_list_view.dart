import 'package:flutter/material.dart';

Widget profileoption(String assetimage, String profiletext) {
  return Column(
    children: [
      ListTile(
        leading: Image.asset(
          assetimage,
          height: 20,
        ),
        title: Align(
          //  alignment: const Alignment(-1.2, 0),
          child: Text(
            profiletext,
            style: const TextStyle(fontSize: 17),
          ),
        ),
      ),
      const Divider(
        color: Colors.black54,
      )
    ],
  );
}
