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
  bool isMan = false;
  bool isWoman = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: greyText,
        ),
        toolbarHeight: 45,
        title: const Text(
          'Registracija',
          style: TextStyle(
            fontSize: 15,
            color: blackText,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: (() =>
                Navigator.pushNamed(context, RegistrationScreen.id)),
            child: const Text(
              'GOTOVO',
              style: TextStyle(
                fontSize: 12,
                color: greyText,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              TextField(
                obscureText: true,
                style: const TextStyle(color: greyText),
                onChanged: (value) {
                  name = value;
                },
                decoration:
                    TextFieldDecoration.copyWith(hintText: 'Korisničko ime'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                style: const TextStyle(color: greyText),
                onChanged: (value) {
                  password1 = value;
                },
                decoration: TextFieldDecoration.copyWith(hintText: 'Šifra'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                style: const TextStyle(color: greyText),
                onChanged: (value) {
                  password2 = value;
                },
                decoration:
                    TextFieldDecoration.copyWith(hintText: 'Šifra ponovo'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                style: const TextStyle(color: greyText),
                onChanged: (value) {
                  email = value;
                },
                decoration: TextFieldDecoration.copyWith(hintText: 'Email'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text('Spol:'),
                  Checkbox(
                    checkColor: Colors.blue,
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.blue;
                      }
                      return greyText;
                    }),
                    value: isMan,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        isMan = value!;
                        isWoman = false;
                      });
                    },
                  ),
                  Text('Muško'),
                  Checkbox(
                    checkColor: Colors.blue,
                    activeColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.blue;
                      }
                      return greyText;
                    }),
                    value: isWoman,
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        isWoman = value!;
                        isMan = false;
                      });
                    },
                  ),
                  Text('Žensko'),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
