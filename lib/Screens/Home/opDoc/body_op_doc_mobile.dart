import 'dart:ui';

import 'package:flutter/material.dart';

class BodyOpDocMobile extends StatelessWidget {
  const BodyOpDocMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: size.width,
        height: size.height * 0.7,
        child: Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: size.height > 620 ? 30 : 10,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(maxHeight: 40),
                    child: Image.asset(
                      "assets/images/LE_Doc.png",
                      color: Color(0xff3095C3),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text('Üzemviteli dokumentum',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.height > 620 ? 11 : 10,
                    ),
                  ),
                  SizedBox(height: 4),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 10,),
                  SizedBox(height: 4),
                  Text('Törvényi háttér: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.height > 620 ? 11 : 10,
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    constraints: BoxConstraints(maxHeight: 40),
                    child: Image.asset(
                      "assets/images/paragraph-symbol_Q.jpg",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(thickness: 2, color: Colors.white,),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 25,),
                  Text('Az emelőgép kisérő dokumentációja:',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6,),
              Card(
                color: Color(0xff3095C3),
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text('Az emelőgép üzembe helyezésekor emelőgépenként, '
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.height > 620 ? 11 : 10,),),
                ),
              ),
              SizedBox(height: 4,),
              Card(
                color: Color(0xff3095C3),
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text('A kísérődokumentáció nem helyettesíti a munkavédelmi '
                      'vizsgálat, az üzembehelyezési, használatbavételi engedély, '
                      'a Gépkönyv (MSZ 19175/2, -3, -4,)  és az Emelőgép napló '
                      'meglétét és érvényességét.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.height > 620 ? 11 : 10,),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
