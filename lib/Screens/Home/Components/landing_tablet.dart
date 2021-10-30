import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:etar_app/locator.dart';

class LandingTablet extends StatelessWidget {
  LandingTablet({Key key}) : super(key: key);

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
            padding: EdgeInsets.symmetric(
                horizontal: size.width > 900 ? 100 : 60,
                vertical: size.height > 720 ? 40 : 10),
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
                            fontSize: size.width > 900 ? 50 : 35,
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
                            'Üzemeltetői adminisztrációs feladatok komplett ellátása',
                            style: TextStyle(
                                color: Color(0xFFE6949B),
                                fontSize: size.width > 900 ? 18 : 15)),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 50,
                            child: Image.asset(
                              'assets/images/Etar.png',
                            ),
                          ),
                          onTap: () {
                            return locator<NavigationService>()
                                .navigateTo('home');
                          },
                        ),
                        SizedBox(width: 40),
                        InkWell(
                          child: Container(
                            width: 50,
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
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height > 720 ? 50 : 20),
                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                width: size.width > 1150
                                    ? 180
                                    : size.width > 900
                                        ? 140
                                        : 100,
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
                              width: size.width > 1400
                                  ? size.width * 0.05
                                  : size.width * 0.01,
                            ),
                            Text(
                                "Elektronikus Termék Azonosító Rendszer."
                                "\nÜzemeltetői feladatok szakszerű ellátása, "
                                "\naz Emelőgép Biztonsági Szabályzat"
                                "\n előírásai szerint.",
                                style: TextStyle(
                                  color: Color(0xFF6F92B6),
                                  fontSize: size.width > 1150 ? 16 : 11,
                                )),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 300,
                          child: Row(
                            children: [
                              Image.asset('assets/images/opStart.png',
                                  width: 50),
                              SizedBox(
                                width: size.width > 1150 ? 30 : 12,
                              ),
                              Text(
                                'Üzembehelyezés',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          child: Row(
                            children: [
                              Image.asset('assets/images/inspection.jpg',
                                  width: 50),
                              SizedBox(
                                width: size.width > 1150 ? 30 : 12,
                              ),
                              Text(
                                'Időszakos vizsgálatok',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          child: Row(
                            children: [
                              Image.asset('assets/images/service.jpg',
                                  width: 50),
                              SizedBox(
                                width: size.width > 1150 ? 30 : 12,
                              ),
                              Text(
                                'Javítások',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          child: Row(
                            children: [
                              Image.asset('assets/images/maintenance.jpg',
                                  width: 50),
                              SizedBox(
                                width: size.width > 1150 ? 30 : 12,
                              ),
                              Text(
                                'Karbantartások',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        InkWell(
                          child: Container(
                            width: size.width * 0.35,
                            height: size.height > 900
                                ? size.height * 0.25
                                : size.height * 0.15,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/mainImage.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          onTap: () {
                            return locator<NavigationService>()
                                .navigateTo('home');
                          },
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                width: size.width > 1150
                                    ? 200
                                    : size.width > 900
                                        ? 160
                                        : 130,
                                child: Image.asset(
                                  'assets/images/etar_en.png',
                                ),
                              ),
                              onTap: () {
                                return locator<NavigationService>()
                                    .navigateTo('enHome');
                              },
                            ),
                            SizedBox(
                              width: size.width > 1400
                                  ? size.width * 0.05
                                  : size.width * 0.001,
                            ),
                            Text(
                              "Főbb műszaki jellemzők"
                              "\nBejegyzésre jogosultak"
                              "\nVizsgálati csoportszám"
                              "\nÜzemeltetésre vonatkozó adatok"
                              "\nCserélt fődarabok, részegységek"
                              "\nÉrintésvédelem"
                              "\nIdőszakos vizsgálatok"
                              "\nTerhelési próba"
                              "\nEgyenértékű biztonság igazolása",
                              style: TextStyle(
                                color: Color(0xFF6F92B6),
                                fontSize: size.width > 1150 ? 16 : 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 300,
                          child: Row(
                            children: [
                              Image.asset('assets/images/LE_Doc.png',
                                  width: 50, color: Color(0xff3095C3)),
                              SizedBox(
                                width: size.width > 1150 ? 30 : 12,
                              ),
                              Text(
                                'Üzemviteli dokumentum',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width > 1800 ? 20 : 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          child: Row(
                            children: [
                              Image.asset('assets/images/logBookIcon.png',
                                  width: 50),
                              SizedBox(
                                width: size.width > 1150 ? 30 : 12,
                              ),
                              Text(
                                'Emelőgépnapló',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width > 1800 ? 20 : 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Container(
                          width: size.width * 0.35,
                          height: size.height > 900
                              ? size.height * 0.25
                              : size.height * 0.15,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/image_en.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                size.height > 1075
                    ? Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Text(
                            'Az emelőgépek üzemviteli dokumentációjának vezetéséért és '
                            'tárolásáért az emelőgép tulajdonosa a felelős!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Az emelőgépek üzemviteli dokumentumát az emelőgép selejtezését '
                            'követő 5 évig meg kell őrizni!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    : Container(
                        height: 0,
                      ),
              ],
            ),
          ),
        ));
  }
}
