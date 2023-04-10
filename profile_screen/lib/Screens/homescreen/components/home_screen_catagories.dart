import 'package:flutter/material.dart';
import 'package:profile_screen/asset_manager.dart';

Widget catagories(BuildContext context) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Categories",
              style: TextStyle(fontSize: 20, color: Color(0xff415162)),
            ),
            Text(
              "View All",
              style: TextStyle(fontSize: 15, color: Color(0xffCE1126)),
            )
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.96,
        height: MediaQuery.of(context).size.height * 0.85,
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (1 / 1),
                crossAxisSpacing: 10,
                mainAxisSpacing: 0,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                      child: Image.asset(AssetManager.catagories)),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff80B435),
                    child: const Text(
                      "Fresh Fruits",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    ),
                  )
                ],
              );
            }),
      )
    ],
  );
}
