import 'package:flutter/material.dart';
import '../../../asset_manager.dart';

Widget promoListView(context) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Featured Promos",
              style: TextStyle(fontSize: 20, color: Color(0xff415162)),
            ),
            Text(
              "View All",
              style: TextStyle(fontSize: 15, color: Color(0xffCE1126)),
            )
          ],
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.builder(
            itemCount: 9,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.all(8),
                  child: Image.asset(AssetManager.promoImage));
            }),
      ),
    ],
  );
}
