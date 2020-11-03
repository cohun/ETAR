import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:etar_app/Screens/Home/Components/body_inspection.dart';
import 'package:flutter/material.dart';

class InspectionScreen extends StatelessWidget {
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
            BodyInspection(),
          ],
        ),
      ],
    );
  }
}
