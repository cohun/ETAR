import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:etar_app/Screens/Home/Components/body_maintenance.dart';
import 'package:flutter/material.dart';

class MaintenanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            CustomAppBar(count: 3,),
            Container(
              height: size.height*.78,
                child: SingleChildScrollView(child: BodyMaintenance())),
          ],
        ),
      ],
    );
  }
}