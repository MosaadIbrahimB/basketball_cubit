import 'package:flutter/material.dart';
class BtnModel extends StatelessWidget {
  String title;
  VoidCallback onPress;

  BtnModel({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
      ),
      onPressed: onPress,
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
      ),
    );
  }
}
