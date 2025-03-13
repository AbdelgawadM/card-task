import 'package:card_task/helper/color_star.dart';
import 'package:card_task/helper/no_color_star.dart';
import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;
  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return getStars(rating);
  }

  Widget getStars(int rating) => switch (rating) {
        1 => const Row(
            children: [
              ColorStar(),
              NoColorStar(),
              NoColorStar(),
              NoColorStar(),
              NoColorStar(),
            ],
          ),
        2 => const Row(
            children: [
              ColorStar(),
              ColorStar(),
              NoColorStar(),
              NoColorStar(),
              NoColorStar(),
            ],
          ),
        3 => const Row(
            children: [
              ColorStar(),
              ColorStar(),
              ColorStar(),
              NoColorStar(),
              NoColorStar(),
            ],
          ),
        4 => const Row(
            children: [
              ColorStar(),
              ColorStar(),
              ColorStar(),
              ColorStar(),
              NoColorStar(),
            ],
          ),
        5 => const Row(
            children: [
              ColorStar(),
              ColorStar(),
              ColorStar(),
              ColorStar(),
              ColorStar(),
            ],
          ),
        _ => const Row(
            children: [
              NoColorStar(),
              NoColorStar(),
              NoColorStar(),
              NoColorStar(),
              NoColorStar(),
            ],
          ),
      };
}
