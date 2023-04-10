import 'package:flutter/material.dart';
import '../../../asset_manager.dart';

Card locationBar() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    elevation: 3,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 7),
                height: 30,
                width: 30,
                child: Image.asset(
                  AssetManager.locationIcon,
                ),
              ),
              const Text(
                "Hadiya 52700",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 25),
                height: 30,
                width: 30,
                child: Image.asset(AssetManager.notificationIcon),
              ),
              SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(AssetManager.basketIcon))
            ],
          ),
        )
      ],
    ),
  );
}
