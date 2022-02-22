import 'package:flutter/material.dart';
import 'package:flutterfestival/widgets/profile/blog_cards/blog_card.dart';
import 'package:flutterfestival/widgets/profile/general_progress_card/general_progress_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan.shade50,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.size.width * 0.05,
                  vertical: mediaQuery.size.height * 0.02,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(10, 20),
                      blurRadius: 30,
                      spreadRadius: 30,
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: mediaQuery.size.height * 0.005,
                        width: mediaQuery.size.width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Health Journey",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      GeneralProgressCard(),
                      Divider(
                        thickness: 2,
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Text(
                            "Covid 19 Cards",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          BlogCard(
                            boxColor: Colors.teal,
                            status: true,
                            title: "Welcome to the APP",
                            img:
                                "https://i.unu.edu/media/cs.unu.edu/news/4572/COVID19-620x415.jpg",
                          ),
                          BlogCard(
                            boxColor: Colors.pink,
                            status: true,
                            title: "Welcome to the APP",
                            img:
                                "https://i.unu.edu/media/cs.unu.edu/news/4572/COVID19-620x415.jpg",
                          ),
                          BlogCard(
                            boxColor: Colors.orange,
                            status: false,
                            title: "Check Immunity",
                            img:
                                "https://i.unu.edu/media/cs.unu.edu/news/4572/COVID19-620x415.jpg",
                          ),
                          BlogCard(
                            boxColor: Colors.purpleAccent,
                            status: true,
                            title: "Diet Plan",
                            img:
                                "https://i.unu.edu/media/cs.unu.edu/news/4572/COVID19-620x415.jpg",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
