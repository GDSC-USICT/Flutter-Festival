import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.blue.shade200,
      ),

      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(
        children: [
          Text(
            "Chat with Kyle",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Spacer(),
          Icon(LineIcons.water),
        ],
      ),
    );
  }
}
