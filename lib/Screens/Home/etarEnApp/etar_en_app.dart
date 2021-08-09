import 'package:etar_app/Screens/Home/Components/en_app_bar.dart';
import 'package:flutter/material.dart';

import 'body_etar_en_app.dart';


class EtarEnApp extends StatelessWidget {
  const EtarEnApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        EnAppBar(
          count: 3,
          color: true,
        ),
        Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF0D2339),
                  Colors.teal[800],
                  Color(0xFF05182D)
                ],
              ),
            ),
            height: size.height / size.width < 1.6 ? size.height - 130 : size.height - 80,
            child: BodyEtarEnApp()),
      ],
    );
  }
}
