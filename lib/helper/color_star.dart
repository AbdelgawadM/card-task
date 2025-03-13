import 'package:flutter/material.dart';

class ColorStar extends StatelessWidget {
  const ColorStar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star_border,
      size: 35,
      color: Color(0xFF50CDC6),
    );
  }
}
