import 'package:flutter/material.dart';
import 'package:logininterface/button.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../const.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Prijava'), backgroundColor: Colors.grey),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                email = value;
              },
              decoration:
                  TextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
              onChanged: (value) {
                password = value;
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
            const SizedBox(
              height: 20.0,
            ),
            SocialLoginButton(
              backgroundColor: Colors.amber,
              height: 50,
              text: 'SignIn',
              borderRadius: 20,
              fontSize: 25,
              onPressed: () {},
              buttonType: SocialLoginButtonType.facebook,
            ),
            const SizedBox(
              height: 20.0,
            ),
            SocialLoginButton(
              backgroundColor: Colors.amber,
              height: 50,
              text: 'SignIn',
              borderRadius: 20,
              fontSize: 25,
              onPressed: () {},
              buttonType: SocialLoginButtonType.google,
            ),
          ],
        ),
      ),
    );
  }
}
