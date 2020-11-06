import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:etar_app/Screens/Home/law/body_law.dart';
import 'package:flutter/material.dart';

class LawScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/ETAR_canvas.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            CustomAppBar(),
            BodyLaw(),
          ],
        ),
      ],
    );
  }
}
