import 'package:flutter/material.dart';
import '../../../asset_manager.dart';

Column summa(BuildContext context) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Deal of the day",
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
        height: MediaQuery.of(context).size.height * 0.55,
        child: ListView.builder(
            itemCount: 9,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.6,
                child: LayoutBuilder(
                  builder: (p0, p1) {
                    return Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: p1.maxHeight * 0.4,
                            width: .,
                            child: Stack(children: [
                              Image.asset(AssetManager.milk),
                            ]),
                          ),
                          Flexible(
                            child: SizedBox(
                              //   width: p1.maxWidth * 0.5,
                              child: const Text(
                                "Premium Antibiotic- residue-free Boneless Chicken Breast Fillet",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff415162)),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            }),
      ),
    ],
  );
}
