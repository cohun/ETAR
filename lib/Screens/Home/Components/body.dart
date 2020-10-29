import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 0.2,
                  child: Image.asset("assets/images/Etar.png"),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: size.width* 0.35,
                  child: Text(
                    "Elektronikus Termék Azonosító Rendszer: \nÜzemeltetői feladatok szakszerű ellátása, "
                    "\naz Emelőgép Biztonsági Szabályzat előírásai szerint.",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.white60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                FittedBox(
                  // Now it just take the required spaces
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF372930),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            color: Color(0xFF9B0000),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF372930),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "ETAR app".toUpperCase(),
                          style: TextStyle(
                            color: Color(0xFFFFFF00),
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width*0.55,
                alignment: Alignment.topRight,
                constraints: BoxConstraints(maxWidth: 700),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    //******************************************************
                    Card(
                      elevation: 16,
                      child: Container(
                        constraints: BoxConstraints(maxHeight: 140, maxWidth: 120),
                        child: Column(
                          children: [
                            Container(
                              constraints: BoxConstraints(maxHeight: 100),
                                child: Image.asset("assets/images/inspection.jpg",),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Vizsgálatok",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF372930),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              color: kPrimaryColor,
                              width: 160,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //*******************************************************
                    Card(
                      elevation: 12,
                      child: Container(
                        constraints: BoxConstraints(maxHeight: 140, maxWidth: 120),
                        child: Column(
                          children: [
                            Container(
                              constraints: BoxConstraints(maxHeight: 100),
                                child: Image.asset("assets/images/maintenance.jpg",),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Karbantartás",
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
                    Card(
                      elevation: 12,
                      child: Container(
                        constraints: BoxConstraints(maxHeight: 140, maxWidth: 120),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset("assets/images/serviceMan.jpg"),
                              constraints: BoxConstraints(maxHeight: 100),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Javítás",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF372930),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              color: kPrimaryColor,
                              width: 160,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

