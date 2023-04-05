import 'package:flutter/material.dart';
import '../../asset_manager.dart';

Container profilePicture(
  BuildContext context,
) {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.all(17),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  AssetManager.profileIcon,
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                const Text(
                  "My Profile",
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
            Container(
                //   margin: const EdgeInsets.only(top: 35),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06),
                child: const Text(
                  "WELCOME ,XYZ",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.6,
                      color: const Color.fromRGBO(192, 197, 203, 1)),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  fit: BoxFit.fill,
                  AssetManager.personIcon,
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 1, right: 0),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(65, 81, 98, 1)),
                  child: Image.asset(
                    height: 17,
                    width: 17,
                    AssetManager.penIcon,
                  ),
                ))
          ],
        )
      ],
    ),
  );
}
