import 'package:flutter/material.dart';
import 'package:flutterfestival/widgets/profile/general_progress_card/progress_small_cards.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularStepProgressIndicator(
            totalSteps: 100,
            currentStep: 74,
            stepSize: 10,
            selectedColor: Colors.blue,
            unselectedColor: Colors.purple.shade100,
            padding: 0,
            width: 120,
            height: 120,
            selectedStepSize: 15,
            roundedCap: (_, __) => true,
            child: Center(
              child: Text(
                "74%",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(width: mediaQuery.size.width * 0.06),
          Expanded(
            child: GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: mediaQuery.orientation == Orientation.portrait
                    ? mediaQuery.size.height * 0.08
                    : mediaQuery.size.height * 0.15,
              ),
              children: [
                SmallProgressCards("1/15"),
                SmallProgressCards("4/15"),
                SmallProgressCards("8/15"),
                SmallProgressCards("7/15"),
                SmallProgressCards("15/15"),
                SmallProgressCards("10/15"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
