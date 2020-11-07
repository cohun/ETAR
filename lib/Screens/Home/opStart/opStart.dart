import 'package:etar_app/Screens/Home/Components/body_opStart_mobile.dart';
import 'package:etar_app/Screens/Home/Components/body_opStart_tablet.dart';
import 'package:etar_app/constant.dart';
import 'package:etar_app/locator.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OpStart extends StatelessWidget {
  const OpStart(
      {Key key, this.what, this.imageName, this.text1, this.text2, this.text3})
      : super(key: key);
  final String what;
  final String imageName;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 680, watch: 200),
      mobile: BodyOpStartMobile(
        what: what,
        imageName: imageName,
        text1: text1,
        text2: text2,
        text3: text3,
      ),
      tablet: BodyOpStartTablet(
        what: what,
        imageName: imageName,
        text1: text1,
        text2: text2,
        text3: text3,
      ),
      desktop: Padding(
        padding: const EdgeInsets.fromLTRB(50, 20, 10, 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Card(
                            elevation: 12,
                            child: Container(
                              constraints:
                              BoxConstraints(maxHeight: 140, maxWidth: 120),
                              child: Column(
                                children: [
                                  Container(
                                    constraints: BoxConstraints(maxHeight: 100),
                                    child: Image.asset(
                                        "assets/images/$imageName"),
                                  ),
                                  Container(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '$what',
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
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Törvényi háttér:',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.double_arrow_sharp,
                        size: 52,
                        color: Colors.blueGrey[900],
                      ),
                      InkWell(
                        onTap: () => locator<NavigationService>().navigateTo('law'),
                        child: Container(
                          alignment: Alignment.bottomRight,
                          constraints: BoxConstraints(
                              maxWidth: 200, minWidth: 200),
                          child: Image.asset(
                              "assets/images/paragraph-symbol_Q.jpg"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Divider(thickness: 2,),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '$what',
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.blueGrey[900],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.5,
                          alignment: Alignment.topCenter,
                          constraints: BoxConstraints(
                              maxWidth: 180, minWidth: 180),
                          child: Image.asset(
                              "assets/images/H-ITB_ETAR_LABEL.png"),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width * 0.70,
                              child: Card(
                                elevation: 12,
                                margin: EdgeInsets.all(12),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    '$text1',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                color: Colors.blueGrey[700],
                              ),
                            ),
                            Container(
                              width: size.width * 0.70,
                              child: Card(
                                elevation: 12,
                                margin: EdgeInsets.all(12),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    '$text2 ',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                color: Colors.blueGrey[700],
                              ),
                            ),
                            Container(
                              width: size.width * 0.70,
                              child: Card(
                                elevation: 12,
                                margin: EdgeInsets.all(12),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    '$text3',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
