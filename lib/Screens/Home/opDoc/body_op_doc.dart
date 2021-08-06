import 'dart:ui';

import 'package:flutter/material.dart';

class BodyOpDoc extends StatelessWidget {
  const BodyOpDoc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: size.width,
        height: size.height * 0.7,
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 80),
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
                  SizedBox(width: size.width > 1150 ? 30: 12,),
                  Text('Üzemviteli dokumentum',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width > 1800 ? 20 : 18,
                    ),
                  ),
                  SizedBox(width: size.width > 1150 ? 30: 12,),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 30,),
                  SizedBox(width: size.width > 1150 ? 30: 12,),
                  Text('Törvényi háttér: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width > 1800 ? 20 : 18,
                    ),
                  ),
                  SizedBox(width: size.width > 1150 ? 30: 12,),
                  Container(
                    constraints: BoxConstraints(maxHeight: 100),
                    child: Image.asset(
                      "assets/images/paragraph-symbol_Q.jpg",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Divider(thickness: 2, color: Colors.white,),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Az emelőgép kisérő dokumentációja:',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width > 1800 ? 18 : 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Card(
                color: Color(0xff3095C3),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('Az emelőgép üzembe helyezésekor emelőgépenként, '
                      'egyedileg kezelhető kísérődokumentációkat kell felfektetni, '
                      'amely tartalmazza az emelőgép azonosító adatait, főbb műszaki '
                      'jellemzőit, az üzemvitellel kapcsolatos adatokat, valamint '
                      'alkalmas az időszakos vizsgálatok, a javítások, a fődarabcserék '
                      'és működési idő (üzemóra) nyilvántartására:'
                      '\n'
                      '\n\n - gépi hajtású emelőgépeknél az MSZ 9725 szerinti '
                      'Emelőgépek üzemviteli dokumentuma (régebben: darukönyv),'
                      '\n\n - gépi hajtású targoncáknál, az MSZ 16226 szerinti'
                      '  kísérődokumentáció,'
                      '\n\n - az egyéb emelőgépeknél, valamint a kézi hajtású '
                      'emelőgépeknél elegendő olyan nyilvántartás, amelyen az '
                      'időszakos vizsgálatok feljegyezhetők.',
                  style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 30,),
              Card(
                color: Color(0xff3095C3),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('A kísérődokumentáció nem helyettesíti a munkavédelmi '
                      'vizsgálat, az üzembehelyezési, használatbavételi engedély, '
                      'a Gépkönyv (MSZ 19175/2, -3, -4,)  és az Emelőgép napló '
                      'meglétét és érvényességét.',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
