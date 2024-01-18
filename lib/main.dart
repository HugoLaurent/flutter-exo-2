import 'package:flutter/material.dart';

import 'package:adv_basics/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: GradientContainer(
          Color.fromRGBO(71, 0, 145, 100),
          Color.fromRGBO(98, 0, 162, 100),
        ),
      ),
    ),
  ));
}
