import 'package:flutter/material.dart';
import 'package:profile_screen/asset_manager.dart';
import 'components/login_screen_text_field.dart';
import 'components/login_screen_login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool signedin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            loginscreenlogo(context, AssetManager.logo),
            const LoginScreenTextFields(),
            forgotpassword(),
            loginbutton(context),
            registerbutton(context)
          ],
        ),
      ),
    );
  }

  SizedBox loginscreenlogo(BuildContext context, String image) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Center(
        child: Image.asset(image),
      ),
    );
  }

  Widget registerbutton(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.all(15),
        child: RichText(
          textAlign: TextAlign.start,
          text: const TextSpan(
              text: "New User? ",
              style: TextStyle(color: Color(0xff415162)),
              children: [
                TextSpan(
                    text: "Register Here",
                    style: TextStyle(color: Color(0xFF80B435)))
              ]),
        ),
      ),
    );
  }

  Container forgotpassword() {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                  activeColor: const Color(0xffFFFFFF),
                  checkColor: const Color(0xff80B435),
                  value: signedin,
                  onChanged: (val) {
                    setState(() {
                      signedin = val!;
                    });
                  }),
              const Text(
                "Keep me Signed In",
                style: TextStyle(fontSize: 15, color: Color(0xff415162)),
              )
            ],
          ),
          const Text(
            "Forgot Password?",
            style: TextStyle(fontSize: 15, color: Color(0xff415162)),
          )
        ],
      ),
    );
  }
}
