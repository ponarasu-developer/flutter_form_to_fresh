import 'package:flutter/material.dart';

GestureDetector loginbutton(BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff80B435)),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.95,
      child: const Center(
          child: Text(
        "Login",
        style: TextStyle(color: Color(0xffFFFFFF), fontSize: 17),
      )),
    ),
  );
}
