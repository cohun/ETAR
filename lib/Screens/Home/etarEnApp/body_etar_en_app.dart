import 'package:etar_app/Screens/Home/logBook/body_log_book_mobile.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../locator.dart';

class BodyEtarEnApp extends StatelessWidget {
  const BodyEtarEnApp({Key key}) : super(key: key);

  _launchURL() async {
    const url = 'https://play.google.com/store/apps/details?id=com.attila.hitb&hl=en_US&gl=US&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 750, tablet: 680, watch: 200),
      mobile: BodyLogBookMobile(),
      desktop: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: size.width,
          height: size.height * 0.7,
          child: ListView(
            children: [
              SizedBox(height: size.height * .1),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        return locator<NavigationService>()
                            .navigateTo('contract');
                      },
                      child: Container(
                        width: size.width * 0.15,
                        child: Image.asset("assets/images/etar_en.png"),
                      ),
                    ),
                    Icon(
                      Icons.double_arrow_sharp,
                      size: 50,
                      color: Colors.white60,
                    ),
                    InkWell(
                      child: Container(
                        width: size.width * 0.30,
                        child:
                            Image.asset('assets/images/google-play-badge.png'),
                      ),
                      onTap: _launchURL,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 50),
                child: Center(
                  child: Text('ETAR_EN mobil applikáció az ETAR applikácóra építve, az emelőgépek'
                      ' üzemeltetéséhez szükséges napló bejegyzések elvégzését és adatainak tárolását'
                      ' teszi lehetővé.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                ),
              ),
              Divider(color: Colors.white70, thickness: 1,),
            ],
          ),
        ),
      ),
    );
  }
}
