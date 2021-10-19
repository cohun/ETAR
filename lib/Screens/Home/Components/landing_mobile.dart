import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:etar_app/locator.dart';

class LandingMobile extends StatelessWidget {
  LandingMobile({Key key}) : super(key: key);

  final Shader iphoneShader =
      LinearGradient(colors: [Color(0xff070D14), Color(0xff85D1EE)])
          .createShader(Rect.fromLTWH(0, 100, 50, 2));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color(0xFF05182D),
            Color(0xFF092A45),
            Color(0xFF0D2339)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Emelőgépek Üzemvitele',
                        style: TextStyle(
                            fontSize: size.width > 370 ? 18 : 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                            // foreground: Paint()..shader = iphoneShader,
                            // shadows: [
                            //   Shadow(
                            //       offset: Offset(10, 10),
                            //       blurRadius: 20,
                            //       color: Colors.black),
                            //   Shadow(
                            //       offset: Offset(10, 10),
                            //       blurRadius: 20,
                            //       color: Colors.black12),
                            // ],
                        ),
                      ),
                      Text(
                          'Üzemeltetői adminisztrációs feladatok\nkomplett ellátása',
                          style: TextStyle(
                              color: Color(0xFFE6949B), fontSize: 11)),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                          width: size.width > 370 ? 40 : 30,
                          child: Image.asset(
                            'assets/images/Etar.png',
                          ),
                        ),
                        onTap: () {
                          return locator<NavigationService>()
                              .navigateTo('home');
                        },
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        child: Container(
                          width: size.width > 370 ? 40 : 30,
                          child: Image.asset(
                            'assets/images/etar_en.png',
                          ),
                        ),
                        onTap: () {
                          return locator<NavigationService>()
                              .navigateTo('enHome');
                        },
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      width: size.height > 670 ? 90 : 50,
                      child: Image.asset(
                        'assets/images/Etar.png',
                      ),
                    ),
                    onTap: () {
                      return locator<NavigationService>()
                          .navigateTo('home');
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                      "Elektronikus Termék Azonosító Rendszer."
                      "\nÜzemeltetői feladatok szakszerű ellátása, "
                      "\naz Emelőgép Biztonsági Szabályzat"
                      "\n előírásai szerint.",
                      style: TextStyle(
                        color: Color(0xFF6F92B6),
                        fontSize:  size.width > 360 ? 10 : 8,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: size.height > 670 ? 300 : 200,
                child: Row(
                  children: [
                    Image.asset('assets/images/opStart.png',
                        width: size.width > 370 ? 40 : 30),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Üzembehelyezés',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height > 670 ? 18 : 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size.height > 670 ? 300 : 200,
                child: Row(
                  children: [
                    Image.asset('assets/images/inspection.jpg',
                        width: size.width > 370 ? 40 : 30),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Időszakos vizsgálatok',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height > 670 ? 18 : 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size.height > 670 ? 300 : 200,
                child: Row(
                  children: [
                    Image.asset('assets/images/service.jpg',
                        width: size.width > 370 ? 40 : 30),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Javítások',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height > 670 ? 18 : 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size.height > 670 ? 300 : 200,
                child: Row(
                  children: [
                    Image.asset('assets/images/maintenance.jpg',
                        width: size.width > 370 ? 40 : 30),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Karbantartások',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height > 670 ? 18 : 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {return locator<NavigationService>()
                        .navigateTo('enHome');},
                    child: Container(
                      width: size.height > 670 ? 90 : 50,
                      child: Image.asset(
                        'assets/images/etar_en.png',
                      ),
                    ),
                  ),
              SizedBox(width: 4,),
              Text(
                "Emelőgépek biztonságos üzemeltetéséhez"
                "\nszükséges adatok, feljegyzések,"
                "\njegyzőkönyvek, főbb karbantartási"
                "\nműveletek dokumentálása."
                "\nA műszakonkénti vizsgálatok ill."
                "\nhasználat közben észlelt események rögzítése",
                style: TextStyle(
                  color: Color(0xFF6F92B6),
                  fontSize: size.width > 1150 ? 16 : size.width > 360 ? 10 : 8,
                ),
              ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: size.height > 670 ? 300 : 200,
                child: Row(
                  children: [
                    Image.asset('assets/images/LE_Doc.png',
                        width: size.width > 370 ? 40 : 30, color: Color(0xff3095C3)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Üzemviteli dokumentum',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height > 670 ? 18 : 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size.height > 670 ? 300 : 200,
                child: Row(
                  children: [
                    Image.asset('assets/images/logBookIcon.png',
                        width: size.width > 370 ? 40 : 30),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Emelőgépnapló',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height > 670 ? 18 : 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
