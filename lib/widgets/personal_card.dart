import 'package:card_task/widgets/star_rating.dart';
import 'package:flutter/material.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({
    super.key,
    required this.image,
    required this.name,
    required this.jobTitle,
    required this.id,
    required this.starsNumbers,
  });
  final String image;
  final String name, jobTitle, id;
  final int starsNumbers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade400),
        ),
        height: 180,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
                height: 180,
                width: 120,
                child: Image(fit: BoxFit.cover, image: AssetImage(image))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      Text(
                        jobTitle,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        id,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(
                  width: 248, // Ensures the Divider spans the full width
                  child: Divider(
                    thickness: 1,
                    height: 0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(
                    children: [StarRating(rating: starsNumbers)],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
