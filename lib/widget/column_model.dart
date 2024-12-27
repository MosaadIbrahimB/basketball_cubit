import 'package:basket_ball_samy/widget/text_model.dart';
import 'package:flutter/material.dart';

import 'button_model.dart';

class ColumnModel extends StatelessWidget {
  String title;
  int counter;
  VoidCallback onPress1;
  VoidCallback onPress2;
  VoidCallback onPress3;
  ColumnModel(
      {super.key, required this.title,
      required this.onPress1,
      required this.onPress2,
      required this.onPress3,
      required this.counter});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        TextMoldel(title: title),
        const SizedBox(height: 50),
        TextMoldel(title: "$counter", fontSize: 80),
        const SizedBox(height: 50),
        Column(
          children: [
            BtnModel(
              title: "add 1 point",
              onPress: onPress1,
            ),
            const SizedBox(height: 20),
            BtnModel(
              title: "add 2 point",
              onPress: onPress2,
            ),
            const SizedBox(height: 20),
            BtnModel(
              title: "add 3 point",
              onPress: onPress3,
            ),
          ],
        ),
      ],
    );
  }
}
