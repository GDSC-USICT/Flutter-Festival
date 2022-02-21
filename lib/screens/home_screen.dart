import 'package:flutter/material.dart';
import 'package:flutterfestival/constants.dart';
import 'package:flutterfestival/widgets/home/chat_card.dart';
import 'package:flutterfestival/widgets/home/health_card_carousel.dart';
import 'package:flutterfestival/widgets/home/recom_card.dart';
import 'package:flutterfestival/widgets/home/top_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Flutter Festival")),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.pink.shade100,
                Colors.blue.shade200,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TopCard
              TopCard(
                onPressed: () => {
                  Navigator.pushNamed(context, profileScreen),
                },
              ),
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
              Container(
                height: 250.0,
                // color: Colors.grey,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    RecomCard(text1: "Exercise every morning at 8:00", icon: Icons.ac_unit,),
                    RecomCard(text1: "Drink loads of water", icon: Icons.water,),
                    RecomCard(text1: "Have a nice and balanced diet", icon: Icons.no_food,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}

