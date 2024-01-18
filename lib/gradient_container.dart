import 'package:flutter/material.dart';

import 'package:adv_basics/final-render.dart';

const startAlignement = Alignment.topLeft;
const endAlignement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  final Color startColor;
  final Color endColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: startAlignement,
          end: endAlignement,
        ),
      ),
      child: const Center(
        child: FinalRender(),
      ),
    );
  }
}
