import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.25,
              child: Image.asset("assets/images/Etar.png"),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Elektronikus Termék Azonosító Rendszer: \nÜzemeltetői feladatok szakszerű ellátása, "
              "\naz Emelőgép Biztonsági Szabályzat előírásai szerint.",
              style: TextStyle(
                fontSize: 21,
                color: Colors.white60,
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
        SizedBox(width: size.width*0.08,),
        Card(
          elevation: 12,
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/opStart.png"),
                width: size.width * 0.1,
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Üzembehelyezés",
                    style: TextStyle(
                        color: Color(0xFF372930),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                color: kPrimaryColor,
                width: size.width * 0.1,
                height: 40,
              ),
            ],
          ),
        ),
        Card(
          elevation: 12,
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/inspection.jpg"),
                width: size.width * 0.1,
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Vizsgálatok",
                    style: TextStyle(
                        color: Color(0xFF372930),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                color: kPrimaryColor,
                width: size.width * 0.1,
                height: 40,
              ),
            ],
          ),
        ),
        Card(
          elevation: 12,
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/maintenance.jpg"),
                width: size.width * 0.084,
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Karbantartás",
                    style: TextStyle(
                        color: Color(0xFF372930),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                color: kPrimaryColor,
                width: size.width * 0.1,
                height: 40,
              ),
            ],
          ),
        ),
        Card(
          elevation: 12,
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/service.jpg"),
                width: size.width * 0.084,
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Javítás",
                    style: TextStyle(
                        color: Color(0xFF372930),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                color: kPrimaryColor,
                width: size.width * 0.1,
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}

