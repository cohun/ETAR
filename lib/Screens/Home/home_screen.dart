import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:etar_app/Screens/Home/Components/body.dart';
import 'package:flutter/material.dart';
import 'package:etar_app/Components/bottom_bar.dart';
import 'package:etar_app/Screens/Home/Components/centered_view.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: HomeView(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/ETAR_canvas.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      alignment: Alignment.bottomRight,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 1000, minWidth: 800),
                        width: size.width*0.62,
                          child: Image.asset("assets/images/mainImage.png"),
                      ),
                    ),
                    Column(
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
                  ],
                ),
              ),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}