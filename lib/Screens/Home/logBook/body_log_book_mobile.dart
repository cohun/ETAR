import 'package:flutter/material.dart';

class BodyLogBookMobile extends StatelessWidget {
  const BodyLogBookMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: size.width,
        height: size.height * 0.8,
        child: Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: 30,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(maxHeight: 40),
                    child: Image.asset(
                      "assets/images/logBookIcon.png",
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Emelőgépnapló',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 10,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Törvényi háttér: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    constraints: BoxConstraints(maxHeight: 40),
                    child: Image.asset(
                      "assets/images/paragraph-symbol_Q.jpg",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
                color: Colors.white70,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Az emelőgép kisérő dokumentációja:',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Card(
                color: Colors.orange[400],
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'Üzemeltető emelőgéppel kapcsolatos üzemeltetői tapasztalatokat '
                    'és üzembiztonsággal kapcsolatos eseményeket köteles írásban '
                    'rögzíteni vagy rögzíttetni emelőgép naplóban, valamint e '
                    'feljegyzéseket megőrizni.'
                    'Az emelőgépnapló arra szolgál, hogy szakszerű vezetése '
                    'esetén tájékoztasson minket az emelőgép állapotáról és minden '
                    'a biztonságot érintő beavatkozásról. '
                    '\n\n - a műszakos vizsgálatokról'
                    '\n\n - javításokról'
                    '\n\n - egyéb ellenőrző felülvizsgálatokról',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Card(
                color: Colors.orange[400],
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'Az emelőgépnaplót a gépkezelőnek naprakészen kell '
                    'vezetni és a berendezésnél (gépnél) kell elhelyezni. ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
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
