import 'package:flutter/material.dart';

class BodyLogBook extends StatelessWidget {
  const BodyLogBook({Key key}) : super(key: key);

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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(maxHeight: 100),
                    child: Image.asset(
                      "assets/images/logBookIcon.png",
                    ),
                  ),
                  SizedBox(width: size.width > 1150 ? 30: 12,),
                  Text('Emelőgépnapló',
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
              Divider(thickness: 2, color: Colors.white70,),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Az emelőgép kisérő dokumentációja:',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width > 1800 ? 18 : 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Card(
                color: Colors.orange[400],
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('Üzemeltető emelőgéppel kapcsolatos üzemeltetői tapasztalatokat '
                      'és üzembiztonsággal kapcsolatos eseményeket köteles írásban '
                      'rögzíteni vagy rögzíttetni emelőgép naplóban, valamint e '
                      'feljegyzéseket megőrizni.'
                      'Az emelőgépnapló arra szolgál, hogy szakszerű vezetése '
                      'esetén tájékoztasson minket az emelőgép állapotáról és minden '
                      'a biztonságot érintő beavatkozásról. '
                      '\n'
                      '\n\n - a műszakos vizsgálatokról'
                      '\n\n - javításokról'
                      '\n\n - egyéb ellenőrző felülvizsgálatokról',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 30,),
              Card(
                color: Colors.orange[400],
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('Az emelőgépnaplót a gépkezelőnek naprakészen kell '
                      'vezetni és a berendezésnél (gépnél) kell elhelyezni. ',
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
