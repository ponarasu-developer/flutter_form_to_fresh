import 'package:flutter/material.dart';

Widget profiletextfield(String inputtext, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
        )),
    child: Row(
      children: [
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1, color: Colors.black26)),
              ),
              padding: const EdgeInsets.all(12),
              // padding: EdgeInsets.only(left: 12),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "$inputtext ", border: InputBorder.none),
              )),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          height: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            // border: Border(left: BorderSide(width: 1)),
            color: const Color.fromRGBO(247, 247, 247, 1),
          ),
          child: const Text("Update",
              style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 0.5,
                  color: Color.fromRGBO(107, 120, 133, 1))),
        )
      ],
    ),
  );
}
