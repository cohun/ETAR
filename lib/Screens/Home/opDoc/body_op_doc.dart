import 'dart:ui';

import 'package:etar_app/Screens/Home/opDoc/body_op_doc_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BodyOpDoc extends StatelessWidget {
  const BodyOpDoc({Key key}) : super(key: key);

  _showDialog(BuildContext context, String title, String text) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        elevation: 5.0,
        title: Text("$title:"),
        content: Text("$text"),
        actions: <Widget>[
          TextButton(
            child: Text('Bezár!'),
            onPressed: () {
              return Navigator.of(context, rootNavigator: true).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 750, tablet: 680, watch: 200),
      mobile: BodyOpDocMobile(),
      desktop: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: size.width,
          height: size.height * 0.7,
          child: Padding(
            padding: EdgeInsets.only(
                left: 50, right: 50, top: size.height > 900 ? 80 : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxHeight: 100),
                      child: Image.asset(
                        "assets/images/LE_Doc.png",
                        color: Color(0xff3095C3),
                      ),
                    ),
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
                    SizedBox(
                      width: size.width > 1150 ? 30 : 12,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: size.width > 1150 ? 30 : 12,
                    ),
                    Text(
                      'Törvényi háttér: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width > 1800 ? 20 : 18,
                      ),
                    ),
                    SizedBox(
                      width: size.width > 1150 ? 30 : 12,
                    ),
                    InkWell(
                      onTap: () {
                        return _showDialog(context, 'Emelőgépek üzemviteli dokumentuma', 'MSZ 9725:2018 előírásainak '
                            'megfelelően, üzemeltető az első üzembehelyezéskor '
                            'hozza létre a gyártói adatok alapján '
                            '\n\nAz üzemeltetés írásban való elrendelését az üzemeltető munkáltató '
                            'egy munkavédelmi szempontú előzetes vizsgálat pozitív eredménye alapján teheti meg.'
                            '\nVizsgálat nélkül nem lehet meggyőződni, hogy az emelőgép, '
                            'illetve a vele megvalósított emelési technológia megfelel-e '
                            'az egészséget nem veszélyeztető munkavégzéshez szükséges tárgyi, személyi, '
                            'szervezési, munkakörnyezeti feltételeknek, valamint, hogy teljesíti-e '
                            'a MvT 18. § (1) bekezdése szerinti követelményeket? '
                            '\nVizsgálni kell az emelőgép kölcsönhatását a munkakörnyezettel, ezért ez '
                            'munkavédelmi szaktevékenységnek minősül. '
                            '\nA rendelkezésre álló vizsgálati szabvány 2011 óta az MSZ 6726-1:2011 '
                            'Emelőgépek rendeltetésszerű használatra való alkalmasságának ellenőrzése: 1. rész: Általános előírások.');
                      },
                      child: Container(
                        constraints: BoxConstraints(maxHeight: 100),
                        child: Image.asset(
                          "assets/images/paragraph-symbol_Q.jpg",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height > 900 ? 30 : 15,
                ),
                Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                SizedBox(
                  height: size.height > 900 ? 30 : 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.height > 720 ? 30 :10,
                    ),
                    Text(
                      'Az emelőgép kisérő dokumentációja:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width > 1800 ? 18 : 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.height > 720 ? 30 :10,
                ),
                Card(
                  color: Color(0xff3095C3),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Az emelőgép üzembe helyezésekor emelőgépenként, '
                      'egyedileg kezelhető kísérődokumentációkat kell felfektetni, '
                      'amely tartalmazza az emelőgép azonosító adatait, főbb műszaki '
                      'jellemzőit, az üzemvitellel kapcsolatos adatokat, valamint '
                      'alkalmas az időszakos vizsgálatok, a javítások, a fődarabcserék '
                      'és működési idő (üzemóra) nyilvántartására:'
                      '\n\n - gépi hajtású emelőgépeknél az MSZ 9725 szerinti '
                      'Emelőgépek üzemviteli dokumentuma (régebben: darukönyv),'
                      '\n\n - gépi hajtású targoncáknál, az MSZ 16226 szerinti'
                      '  kísérődokumentáció,'
                      '\n\n - az egyéb emelőgépeknél, valamint a kézi hajtású '
                      'emelőgépeknél elegendő olyan nyilvántartás, amelyen az '
                      'időszakos vizsgálatok feljegyezhetők.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height > 720 ? 30 : 10,
                ),
                Card(
                  color: Color(0xff3095C3),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'A kísérődokumentáció nem helyettesíti a munkavédelmi '
                      'vizsgálat, az üzembehelyezési, használatbavételi engedély, '
                      'a Gépkönyv (MSZ 19175/2, -3, -4,)  és az Emelőgép napló '
                      'meglétét és érvényességét.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
