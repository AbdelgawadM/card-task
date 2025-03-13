import 'package:flutter/material.dart';

class NoColorStar extends StatelessWidget {
  const NoColorStar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star_border,
      size: 35,
      color: Color(0xFFC4EFE9),
    );
  }
}
