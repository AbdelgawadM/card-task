import 'package:card_task/models/card_model.dart';
import 'package:card_task/scrolling_options/scrolling_options.dart';
import 'package:card_task/widgets/personal_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<CardModel> cardList = [
    CardModel(
        image: 'assets/mans/man1.jpeg',
        name: 'Michael Anderson',
        jobTitle: ' Software Engineer',
        id: 'USA-102345',
        starNumber: 3),
    CardModel(
        image: 'assets/mans/man2.webp',
        name: 'Roberts Thompson',
        jobTitle: 'Financial Analyst',
        id: 'USA-309876',
        starNumber: 5),
    CardModel(
        image: 'assets/mans/man3.jpeg',
        name: 'Christopher Harris',
        jobTitle: 'Data Scientist',
        id: 'USA-512908',
        starNumber: 2),
    CardModel(
        image: 'assets/mans/man4.jpeg',
        name: 'James Carter',
        jobTitle: 'Financial Advisor',
        id: 'USA-100234',
        starNumber: 2),
    CardModel(
        image: 'assets/mans/man5.jpeg',
        name: 'Daniel Wright',
        jobTitle: 'Marketing Director',
        id: 'USA-610245',
        starNumber: 4),
    CardModel(
        image: 'assets/mans/man6.png',
        name: 'David Miller',
        jobTitle: 'Cybersecurity Analyst',
        id: 'USA-610245',
        starNumber: 4),
    CardModel(
        image: 'assets/mans/man2.webp',
        name: 'Roberts Thompson',
        jobTitle: 'Financial Analyst',
        id: 'USA-309876',
        starNumber: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ScrollingOptions(
          child: ListView.builder(
            itemCount: cardList.length,
            itemBuilder: (context, index) => PersonalCard(
                image: cardList[index].image,
                name: cardList[index].name,
                jobTitle: cardList[index].jobTitle,
                id: cardList[index].id,
                starsNumbers: cardList[index].starNumber),
          ),
        ),
      ),
    );
  }
}
