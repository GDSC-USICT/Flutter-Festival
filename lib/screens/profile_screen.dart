import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Text("Hello. This is the Profile screen", style: TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
