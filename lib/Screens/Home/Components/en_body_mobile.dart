import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constant.dart';
import '../../../locator.dart';

class EnBodyMobile extends StatelessWidget {
  EnBodyMobile({
    Key key,
  }) : super(key: key);

  final Shader iphoneShader =
      LinearGradient(colors: [Color(0xff070D14), Color(0xff85D1EE)])
          .createShader(Rect.fromLTWH(0, 100, 50, 2));

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
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height - 80,
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
          height: size.height * 0.78,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
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
                      width: size.width * 0.25,
                      child: Image.asset("assets/images/etar_en.png"),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Icon(
                    Icons.double_arrow_sharp,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.35,
                      child: Image.asset('assets/images/google-play-badge.png'),
                    ),
                    onTap: _launchURL,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                width: size.width * 0.9,
                child: Text(
                  "Az ETAR_EN mobil applikáció az ETAR rendszerre épülve"
                  "\nlehetővé teszi, az emelőgépekhez előírt dokumentációk"
                  "\nés napló bejegyzések naprakész vezetését, megörzését "
                    "\nés a bejegyzésre jogosultak körének szabályozását.",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = iphoneShader,
                      shadows: [
                        Shadow(
                            offset: Offset(10, 10),
                            blurRadius: 20,
                            color: Colors.black),
                        Shadow(
                            offset: Offset(10, 10),
                            blurRadius: 20,
                            color: Colors.black12),
                      ]),
                ),
              ),
              SizedBox(
                height: size.height > 620 ? 20 :10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Card(
                      elevation: 12,
                      child: Container(
                        constraints:
                        BoxConstraints(maxHeight: size.height > 620 ? 160 : 120, maxWidth: 120),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              constraints: BoxConstraints(maxHeight: size.height > 620 ? 100 : 60),
                              child: Image.asset("assets/images/LE_Doc.png"),
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
                        constraints:
                        BoxConstraints(maxHeight: size.height > 620 ? 160 : 120, maxWidth: 120),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              constraints: BoxConstraints(maxHeight: size.height > 620 ? 100 : 60),
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
              SizedBox(height: size.height > 620 ? 20 :10,),
              InkWell(
                onTap: () {
                  return locator<NavigationService>().navigateTo('iframe');
                },
                child: FittedBox(
                  // Now it just take the required spaces
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: size.height > 620 ? 20 :10, horizontal: 50),
                    padding: EdgeInsets.all(size.height > 620 ? 15 :5),
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
      ),
    );
  }
}
