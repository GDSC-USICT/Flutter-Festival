import 'package:flutter/material.dart';

class BlogCard extends StatefulWidget {
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
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  bool expanded = false;

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
          ? expanded
              ? mediaQuery.size.height * 0.6
              : mediaQuery.size.height * 0.3
          : expanded
              ? mediaQuery.size.height * 0.3
              : mediaQuery.size.height * 0.15,
      decoration: BoxDecoration(
        color: widget.boxColor.withOpacity(0.2),
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
                widget.title,
                style: TextStyle(
                  color: widget.boxColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              expanded ? Text("Inhale\nexhale") : Container(),
              Row(
                children: [
                  Text(
                    widget.status ? "Completed" : "Complete Card",
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
                    child: GestureDetector(
                      onTap: widget.status
                          ? null
                          : () {
                              setState(() {
                                expanded = !expanded;
                              });
                            },
                      child: Icon(
                        widget.status
                            ? Icons.done
                            : expanded
                                ? Icons.arrow_circle_up_rounded
                                : Icons.arrow_drop_down_circle_outlined,
                        size: 20,
                        color: widget.status ? Colors.green : Colors.red,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: expanded
                ? mediaQuery.size.height * 0.15
                : mediaQuery.size.height * 0.3,
            width: mediaQuery.size.width * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.img,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
