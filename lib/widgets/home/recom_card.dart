import 'package:flutter/material.dart';

class RecomCard extends StatelessWidget {
  const RecomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: 120.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          color: Colors.blue,
          child: Column(
            children: [
              Text("Exercise every morning at 8:00"),
              SizedBox(
                height: 20.0,
              ),
              Icon(Icons.ac_unit),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () => {},
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
      ),
    );
  }
}
