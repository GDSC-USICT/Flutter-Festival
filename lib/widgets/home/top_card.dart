import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(10.0),
      color: Colors.pink,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              height: 40.0,
              child: Image.network("https://regency.capital/wp-content/uploads/2020/04/flutter-logo.png"),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Hi John",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text("Let's check if everything is okay with you",
                style: TextStyle(color: Colors.black54),
              )
            ],
          )
        ],
      ),
    );
  }
}
