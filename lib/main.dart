import 'package:flutter/material.dart';
import 'package:logininterface/screens/login_screen.dart';
import 'package:logininterface/screens/registration_screen.dart';

void main() {
  runApp(LogInApp());
}

class LogInApp extends StatefulWidget {
  @override
  State<LogInApp> createState() => _LogInAppState();
}

class _LogInAppState extends State<LogInApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
