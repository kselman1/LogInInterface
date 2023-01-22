import 'package:flutter/material.dart';

const blueColor = Color(0xFF3c27b4);
const googleWhite = Color(0xFFffffff);
const greyColor = Color(0xFFebe9ea);
const greyText = Color(0xFF6b6b6b);
const backgcolor = Color(0xFFfbfbfb);
const blackText = Color(0xFF1c1c1a);

const TextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(color: greyText),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: greyText,
    ),
  ),
);
