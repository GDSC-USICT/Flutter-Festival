import 'package:flutter/material.dart';

class RecomCard extends StatelessWidget {
  final text1;

  final icon;

  RecomCard({required this.text1, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 200.0,
      width: 150.0,
      child: Container(
        height: 200.0,
        width: 150.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.lightBlueAccent,
              Colors.lightGreenAccent,
            ]),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5.0, spreadRadius: 2.0),
          ]
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text1),
            SizedBox(
              height: 20.0,
            ),
            Icon(icon),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => {
                //function body
                print("this button was pressed"),
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: Text("Go to my goals"),
            )
          ],
        ),
      ),
    );
  }
}
