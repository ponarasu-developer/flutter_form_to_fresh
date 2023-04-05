import 'package:flutter/material.dart';
import '../../../asset_manager.dart';

class LoginScreenTextFields extends StatefulWidget {
  const LoginScreenTextFields({
    super.key,
  });

  @override
  State<LoginScreenTextFields> createState() => _LoginScreenTextFieldsState();
}

class _LoginScreenTextFieldsState extends State<LoginScreenTextFields> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: const Color(0xffC0C5CB)),
              borderRadius: BorderRadius.circular(8)),
          height: MediaQuery.of(context).size.height * 0.1,
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: 'Email ID', border: InputBorder.none),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: const Color(0xffC0C5CB)),
              borderRadius: BorderRadius.circular(8)),
          height: MediaQuery.of(context).size.height * 0.1,
          padding: const EdgeInsets.all(12),
          child: TextFormField(
            textInputAction: TextInputAction.done,
            obscureText: true,
            obscuringCharacter: "*",
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                suffixIconConstraints:
                    const BoxConstraints(minHeight: 27, minWidth: 27),
                suffixIconColor: const Color(0xff80B435),
                suffixIcon: ImageIcon(AssetImage(AssetManager.showPassword)),
                hintText: 'Password',
                border: InputBorder.none),
          ),
        )
      ],
    ));
  }
}
