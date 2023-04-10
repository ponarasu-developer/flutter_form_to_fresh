import 'package:flutter/material.dart';
import '../../../asset_manager.dart';

Column farms(BuildContext context) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Explore Farms",
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
        height: MediaQuery.of(context).size.height * 0.30,
        child: ListView.builder(
            itemCount: 9,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.40,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 8),
                      padding: const EdgeInsets.all(18),
                      height: MediaQuery.of(context).size.height * 0.18,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xff415162)),
                          shape: BoxShape.circle),
                      child: Image.asset(
                        AssetManager.forms,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: const Flexible(
                        child: Text(
                          "Martha's Fresh Farm ",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.visible,
                          style:
                              TextStyle(fontSize: 17, color: Color(0xff415162)),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    ],
  );
}
