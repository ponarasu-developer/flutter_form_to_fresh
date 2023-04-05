import 'package:flutter/material.dart';
import '../../asset_manager.dart';
import '../../color_manager.dart';
import 'Profile_picture_widget.dart';
import 'components/profile_screen_list_view.dart';

import 'components/profile_screen_text_field.dart';
import 'components/profile_screen_icon.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.appbarBackground,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.07,
              child: Image.asset(AssetManager.arrowIcon),
            ),
            Row(
              children: [
                profileIcon(AssetManager.notificationIcon, Colors.red, "3"),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child:
                      profileIcon(AssetManager.basketIcon, Colors.green, "6"),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            profilePicture(context),
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    profiletextfield("XYZ", context),
                    divider(context),
                    profiletextfield("1234567890", context),
                    divider(context),
                    profiletextfield("xyz@gmail.com", context),
                    divider(context),
                    changepasswordbutton(context)
                  ],
                ),
              ),
            ),

            ///
            Column(
              children: [
                profileoption(AssetManager.addressIcon, "Address Book"),
                profileoption(AssetManager.notificationIcon, "Notifications"),
                profileoption(AssetManager.settingsIcon, "Settings"),
                profileoption(AssetManager.customerIcon, "Customer Support"),
                profileoption(AssetManager.aboutIcon, "About"),
                profileoption(AssetManager.logoutIcon, "Log Out")
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          items: [
            bottomnavigationbaritem("Catagories", AssetManager.menu),
            bottomnavigationbaritem("Quicksearch", AssetManager.search),
            bottomnavigationbaritem("Home", AssetManager.home),
            bottomnavigationbaritem("Orders", AssetManager.order),
            bottomnavigationbaritem("Account", AssetManager.user),
          ]),
    );
  }

  SizedBox divider(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.02,
    );
  }

  BottomNavigationBarItem bottomnavigationbaritem(
      String labeltext, String imagetext) {
    return BottomNavigationBarItem(
      label: labeltext,
      icon: ImageIcon(
        AssetImage(imagetext),
      ),
    );
  }

  Container changepasswordbutton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(128, 180, 53, 1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey,
          )),
      height: MediaQuery.of(context).size.height * 0.08,
      child: const Center(
        child: Text(
          "Change Your Password",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
