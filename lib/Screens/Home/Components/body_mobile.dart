import 'package:etar_app/locator.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class BodyMobile extends StatelessWidget {
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
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 0.2,
                  child: Image.asset("assets/images/Etar.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width* 0.35,
                  child: Text(
                    "Elektronikus Termék Azonosító Rendszer: \nÜzemeltetői feladatok szakszerű ellátása, "
                        "\naz Emelőgép Biztonsági Szabályzat előírásai szerint.",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FittedBox(
                  // Now it just take the required spaces
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF372930),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 20,
                          width: 20,
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
                        SizedBox(width: 10),
                        Text(
                          "ETAR app".toUpperCase(),
                          style: TextStyle(
                            color: Color(0xFFFFFF00),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width*0.55,
                alignment: Alignment.topRight,
                constraints: BoxConstraints(maxWidth: 300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Card(
                        elevation: 12,
                        child: Container(
                          constraints: BoxConstraints(maxHeight: 100, maxWidth: 80),
                          child: Column(
                            children: [
                              Container(
                                constraints: BoxConstraints(maxHeight: 70),
                                child: Image.asset("assets/images/opStart.png"),
                              ),
                              Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Üzembehelyezés",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF372930),
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                color: kPrimaryColor,
                                height: 32,
                                width: 120,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {return locator<NavigationService>().navigateTo('opStart');},
                    ),
                    //******************************************************
                    InkWell(
                      child: Card(
                        elevation: 16,
                        child: Container(
                          constraints: BoxConstraints(maxHeight: 100, maxWidth: 80),
                          child: Column(
                            children: [
                              Container(
                                constraints: BoxConstraints(maxHeight: 70),
                                child: Image.asset("assets/images/inspection.jpg",),
                              ),
                              Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Vizsgálatok",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF372930),
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                color: kPrimaryColor,
                                width: 120,
                                height: 32,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {return locator<NavigationService>().navigateTo('inspection');},
                    ),
                    //*******************************************************
                  ],
                ),
              ),

              Container(
                width: size.width*0.55,
                alignment: Alignment.topRight,
                constraints: BoxConstraints(maxWidth: 300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //*******************************************************
                    InkWell(
                      child: Card(
                        elevation: 12,
                        child: Container(
                          constraints: BoxConstraints(maxHeight: 100, maxWidth: 80),
                          child: Column(
                            children: [
                              Container(
                                constraints: BoxConstraints(maxHeight: 70),
                                child: Image.asset("assets/images/maintenance.jpg",),
                              ),
                              Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Karbantartás",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF372930),
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                color: kPrimaryColor,
                                height: 30,
                                width: 120,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {return locator<NavigationService>().navigateTo('maintenance');},
                    ),
                    InkWell(
                      child: Card(
                        elevation: 12,
                        child: Container(
                          constraints: BoxConstraints(maxHeight: 100, maxWidth: 80),
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset("assets/images/serviceMan.jpg"),
                                constraints: BoxConstraints(maxHeight: 70),
                              ),
                              Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Javítás",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF372930),
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                color: kPrimaryColor,
                                width: 120,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {return locator<NavigationService>().navigateTo('repair');},
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

