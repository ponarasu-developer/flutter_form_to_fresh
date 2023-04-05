import 'package:flutter/material.dart';
import 'package:profile_screen/asset_manager.dart';
import 'components/login_screen_text_field.dart';
import 'components/login_screen_login_button.dart';
import 'components/login_screen_logo.dart';
import 'components/login_screen_register_button.dart';

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
