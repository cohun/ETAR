import 'package:etar_app/Screens/Home/Components/body_opStart_mobile.dart';
import 'package:etar_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BodyOpStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 680, watch: 200),
      mobile: BodyOpStartMobile(),

      desktop: Column(
        children: [
          Card(
            elevation: 12,
            child: Container(
              constraints: BoxConstraints(maxHeight: 140, maxWidth: 120),
              child: Column(
                children: [
                  Container(
                    constraints: BoxConstraints(maxHeight: 100),
                    child: Image.asset("assets/images/opStart.png"),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Üzembehelyezés",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF372930),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    color: kPrimaryColor,
                    height: 40,
                    width: 160,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
