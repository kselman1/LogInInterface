import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.title,
      required this.colour,
      required this.onPressed,
      required this.dispicon});

  final Color colour;
  final String title;
  final VoidCallback? onPressed;
  final Icon dispicon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(7.0),
        child: ElevatedButton.icon(
          onPressed: onPressed,
          label: Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 16, 11, 11),
            ),
          ),
          icon: const Icon(
            Icons.download,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
