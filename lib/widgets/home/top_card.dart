import 'package:flutter/material.dart';
import 'package:flutterfestival/constants.dart';

class TopCard extends StatelessWidget {
  final onPressed;

  TopCard({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border : Border.all(),
          color: Colors.pink.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        padding: EdgeInsets.all(25.0),

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
      ),
    );
  }
}
