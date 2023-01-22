import 'package:flutter/material.dart';
import 'package:logininterface/button.dart';
import 'package:logininterface/screens/registration_screen.dart';
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
      appBar: AppBar(
          toolbarHeight: 45,
          centerTitle: true,
          title: const Text(
            'PRIJAVA',
            style: TextStyle(
              fontSize: 15,
              color: blackText,
            ),
          ),
          backgroundColor: Colors.white),
      backgroundColor: backgcolor,
      body: SafeArea(
        //trebo sam u container i samo edgeinsets
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: backgcolor),
                  onChanged: (value) {
                    email = value;
                  },
                  decoration:
                      TextFieldDecoration.copyWith(hintText: 'Korisničko ime'),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(color: backgcolor),
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: TextFieldDecoration.copyWith(hintText: 'Šifra'),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SocialLoginButton(
                backgroundColor: blueColor,
                height: 30,
                width: 300,
                text: 'Prijava',
                borderRadius: 5,
                fontSize: 12,
                onPressed: () {},
                buttonType: SocialLoginButtonType.generalLogin,
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 300,
                child: Row(children: const [
                  Expanded(child: Divider()),
                  CircleAvatar(
                    backgroundColor: greyColor,
                    child: Text(
                      "ili",
                      style: TextStyle(color: blackText),
                    ),
                  ),
                  Expanded(child: Divider()),
                ]),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SocialLoginButton(
                backgroundColor: blueColor,
                height: 30,
                width: 300,
                text: 'Facebook prijava',
                borderRadius: 5,
                fontSize: 12,
                onPressed: () {},
                buttonType: SocialLoginButtonType.facebook,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SocialLoginButton(
                backgroundColor: googleWhite,
                height: 30,
                width: 300,
                text: 'Google prijava',
                borderRadius: 5,
                fontSize: 12,
                onPressed: () {},
                buttonType: SocialLoginButtonType.google,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SocialLoginButton(
                backgroundColor: greyColor,
                height: 30,
                textColor: greyText,
                width: 300,
                text: 'Registracija',
                borderRadius: 5,
                fontSize: 12,
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                buttonType: SocialLoginButtonType.generalLogin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
