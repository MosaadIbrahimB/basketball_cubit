import 'package:flutter/material.dart';
class TextMoldel extends StatelessWidget {
  String title;
  double fontSize;
  TextMoldel({required this.title,this.fontSize=40.0});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
      ),
    );
  }
}
