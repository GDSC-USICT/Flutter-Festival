import 'package:flutter/material.dart';
import 'package:flutterfestival/widgets/home/chat_card.dart';
import 'package:flutterfestival/widgets/home/health_card_carousel.dart';
import 'package:flutterfestival/widgets/home/recom_card.dart';
import 'package:flutterfestival/widgets/home/top_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Festival")
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TopCard
            TopCard(),
            // ChatCard
            ChatCard(),
            // Carousel
            CarouselWithIndicatorDemo(),
            Container(
              margin: EdgeInsets.only(left: 20.0),
                child: Text("Top Recommendations", style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
            ),
            // Recommendation Card
            RecomCard(),
          ],
        ),
      ),
    );

  }
}

