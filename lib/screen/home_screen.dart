import 'package:flutter/material.dart';

import '../widget/body_home.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Point Counter",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: BodyHome(),
      ),
    );
  }
}

