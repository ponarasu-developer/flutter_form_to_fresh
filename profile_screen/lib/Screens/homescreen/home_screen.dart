import 'package:flutter/material.dart';
import 'package:profile_screen/asset_manager.dart';
import './components/home_screen_location_bar.dart';
import './components/home_screen_promo_list_view.dart';
import './components/home_screen_catagories.dart';
import './widgets/home_screen_farms.dart';
import './widgets/home_screen_deal_day.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          homePageLogo(context),
          locationBar(),
          bannerImage(context, AssetManager.bannerImage1),
          promoListView(context),
          summa(context),
          bannerImage(context, AssetManager.bannerImage2),
          catagories(context),
          farms(context)
        ],
      )),
    );
  }

/////////////////////////////////////////////////////////////////
  Center bannerImage(BuildContext context, String image) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        width: MediaQuery.of(context).size.width * 0.95,
        child: Image.asset(image),
      ),
    );
  }

  Center homePageLogo(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Image.asset(
          AssetManager.logo,
        ),
      ),
    );
  }
}
