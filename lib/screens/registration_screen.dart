import 'package:flutter/material.dart';

import 'package:social_login_buttons/social_login_buttons.dart';

import '../const.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email = "";
  String password1 = "";
  String name = "";
  String password2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registracija"),
      ),
      body: SafeArea(
        child: Column(children: [
          TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
            onChanged: (value) {
              name = value;
            },
            decoration:
                TextFieldDecoration.copyWith(hintText: 'Enter your password'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
            onChanged: (value) {
              password1 = value;
            },
            decoration:
                TextFieldDecoration.copyWith(hintText: 'Enter your password'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
            onChanged: (value) {
              password2 = value;
            },
            decoration:
                TextFieldDecoration.copyWith(hintText: 'Enter your password'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
            onChanged: (value) {
              email = value;
            },
            decoration:
                TextFieldDecoration.copyWith(hintText: 'Enter your password'),
          ),
          const SizedBox(
            height: 50.0,
          ),
          SocialLoginButton(
            backgroundColor: Colors.amber,
            height: 50,
            text: 'SignIn',
            borderRadius: 20,
            fontSize: 25,
            onPressed: () {},
            buttonType: SocialLoginButtonType.generalLogin,
          ),
        ]),
      ),
    );
  }
}
