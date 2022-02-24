import 'package:flutter/material.dart';
import 'package:flutterfestival/widgets/profile/general_progress_card/circular_progress.dart';

class GeneralProgressCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: mediaQuery.orientation == Orientation.landscape
          ? mediaQuery.size.height * 0.5
          : mediaQuery.size.height * 0.20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("General Progress"),
          Expanded(
            child: Progress(),
          ),
        ],
      ),
    );
  }
}
