import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:etar_app/Screens/Home/Components/body.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ETAR_app.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Spacer(),
            // It will cover 1/3 of free spaces
            Body(),
            Spacer(
              flex: 3,
            ),
            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }
}