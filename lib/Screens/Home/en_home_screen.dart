import 'package:etar_app/Screens/Home/Components/en_app_bar.dart';
import 'package:etar_app/Screens/Home/Components/en_body_mobile.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constant.dart';
import '../../locator.dart';

class EnHomeScreen extends StatelessWidget {
  EnHomeScreen({Key key}) : super(key: key);

  final Shader iphoneShader =
      LinearGradient(colors: [Color(0xff070D14), Color(0xff85D1EE)])
          .createShader(Rect.fromLTWH(0, 100, 50, 2));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        EnAppBar(
          count: 0,
        ),
        Spacer(),
        // It will cover 1/3 of free spaces
        Body(size: size, iphoneShader: iphoneShader),
        Spacer(
          flex: 3,
        ),
        // it will cover 2/3 of free spaces
      ],
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
    @required this.iphoneShader,
  }) : super(key: key);

  final Size size;
  final Shader iphoneShader;

  _launchURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=hu.hitb.etar_en&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 750, tablet: 680, watch: 200),
      mobile: EnBodyMobile(),
      desktop: Container(
        height: size.height - 130,
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
          body: Container(
            width: size.width,
            height: size.height * 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, top: size.height > 720 ? 80 : 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              return locator<NavigationService>()
                                  .navigateTo('contract');
                            },
                            child: Container(
                              width: size.width > 1770 ? size.width* 0.1 : size.width * 0.15,
                              child: Image.asset("assets/images/etar_en.png"),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Icon(
                            Icons.double_arrow_sharp,
                            size: 50,
                            color: Colors.white60,
                          ),
                          InkWell(
                            child: Container(
                              width: size.width * 0.15,
                              child: Image.asset(
                                  'assets/images/google-play-badge.png'),
                            ),
                            onTap: _launchURL,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: size.width * 0.45,
                        child: Text(
                          "Az ETAR_EN mobil applikáció az ETAR rendszerre épülve lehetővé teszi,"
                              "\naz emelőgépekhez előírt dokumentációk és napló bejegyzések naprakész"
                              "\nvezetését, megörzését és a bejegyzésre jogosultak körének szabályozását.",
                          style: TextStyle(
                            fontSize: size.width > 1770 ? 16 : size.width > 1450 ? 19 : size.width > 1180 ? 16 : size.width > 900 ? 11 :10,

                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey.shade200,
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
                              // ]
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.width > 1770 ? 20 : 50,
                      ),
                      InkWell(
                        onTap: () {
                          return locator<NavigationService>()
                              .navigateTo('iframe');
                        },
                        child: FittedBox(
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
                                Column(
                                  children: [
                                    Text(
                                      "ETAR app".toUpperCase(),
                                      style: TextStyle(
                                        color: Color(0xFFFFFF00),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                      ),
                                    ),
                                    Text(
                                      "oktató anyagok".toUpperCase(),
                                      style: TextStyle(
                                        color: Color(0xFFFFFF00),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 15),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: size.height > 720 ? 80.0: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * 0.45,
                        alignment: Alignment.topRight,
                        constraints: BoxConstraints(maxWidth: 700),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Card(
                                elevation: 12,
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxHeight: 160, maxWidth: 120),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        constraints:
                                            BoxConstraints(maxHeight: 100),
                                        child: Image.asset(
                                            "assets/images/LE_Doc.png"),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Üzemviteli\ndokumentáció",
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
                              onTap: () {
                                return locator<NavigationService>()
                                    .navigateTo('opDoc');
                              },
                            ),
                            //******************************************************
                            InkWell(
                              child: Card(
                                elevation: 16,
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxHeight: 160, maxWidth: 120),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        constraints:
                                            BoxConstraints(maxHeight: 100),
                                        child: Image.asset(
                                          "assets/images/logBookIcon.png",
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Emelőgépnapló",
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
                              onTap: () {
                                return locator<NavigationService>()
                                    .navigateTo('logBook');
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12.0, bottom: size.height > 900 ? 73 : 20),
                        child: Card(
                            color: Color(0xff3095C3),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: size.width > 1250 ?
                            Text('Az emelőgép üzembe helyezésekor emelőgépenként, egyedileg kezelhető kísérődokumentációkat'
                                '\nkell felfektetni, amely tartalmazza az emelőgép azonosító adatait, főbb műszaki jellemzőit, az'
                                '\nüzemvitellel kapcsolatos adatokat, valamint alkalmas az időszakos vizsgálatok, '
                                '\na javítások, a fődarabcserék és működési idő (üzemóra) nyilvántartására ',
                              style: TextStyle(
                                fontSize: size.width > 1600 ? 16 : 13,
                              ),)
                            : Text('Az emelőgép üzembe helyezésekor emelőgépenként,'
                                '\negyedileg kezelhető kísérődokumentációkat kell felfektetni,'
                                '\namely tartalmazza az emelőgép azonosító adatait, főbb műszaki'
                                '\n jellemzőit, az üzemvitellel kapcsolatos adatokat, valamint'
                                '\n alkalmas az időszakos vizsgálatok, javítások, a fődarabcserék'
                              '\n és működési idő (üzemóra) nyilvántartására',
                              style: TextStyle(
                                fontSize: size.width > 941 ? 12 : 10,
                              ),),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width*0.35,
                        height: size.height > 900 ? size.height*0.25 : size.height*0.15,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/image_en.jpg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
