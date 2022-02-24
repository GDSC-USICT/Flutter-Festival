import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final Color boxColor;
  final String title;
  final bool status;
  final String img;

  BlogCard({
    required this.boxColor,
    required this.status,
    required this.title,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: mediaQuery.size.height * 0.008,
        horizontal: mediaQuery.size.width * 0.05,
      ),
      margin: EdgeInsets.symmetric(
        vertical: mediaQuery.size.height * 0.008,
      ),
      height: mediaQuery.orientation == Orientation.landscape
          ? mediaQuery.size.height * 0.3
          : mediaQuery.size.height * 0.15,
      decoration: BoxDecoration(
        color: boxColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: boxColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    status ? "Completed" : "Complete Card",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: mediaQuery.size.width * 0.025,
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      status
                          ? Icons.done
                          : Icons.arrow_drop_down_circle_outlined,
                      size: 20,
                      color: status ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: mediaQuery.size.height * 0.3,
            width: mediaQuery.size.width * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
