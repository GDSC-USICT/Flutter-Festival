import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  final onPressed;

  TopCard({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.pink.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.only(
          top: mediaQuery.size.height * 0.05,
          bottom: mediaQuery.size.height * 0.02,
          left: mediaQuery.size.width * 0.03,
          right: mediaQuery.size.width * 0.03,
        ),
        padding: EdgeInsets.all(25.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: 40.0,
                child: Image.network(
                    "https://regency.capital/wp-content/uploads/2020/04/flutter-logo.png"),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi John",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Let's check if everything is okay with you",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
