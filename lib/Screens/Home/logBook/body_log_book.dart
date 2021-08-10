import 'package:etar_app/Screens/Home/logBook/body_log_book_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BodyLogBook extends StatelessWidget {
  const BodyLogBook({Key key}) : super(key: key);

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
      mobile: BodyLogBookMobile(),
      desktop: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: size.width,
          height: size.height * 0.7,
          child: Padding(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              top: size.height > 900 ? 80 : 20,
            ),
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
                        return _showDialog(context, 'Emelőgép napló', '10/2016. (IV. 5.) NGM rendelet '
                            'a munkaeszközök és használatuk biztonsági és egészségügyi '
                            'követelményeinek minimális szintjéről:'
                            '\n\n38. § (4) Teher emelésére használt munkaeszközhöz naplót '
                            'kell rendszeresíteni és abba be kell jegyezni: '
                            '\na) a használat előtt elvégzett ellenőrzések tényét és eredményét;'
                            '\nb) a feltárt hibákat és azok elhárításának tényét és eredményét;'
                            '\nc) az elvégzett időszakos vizsgálatok tényét és eredményét');
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
                  color: Colors.white70,
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
                        color: Colors.white70,
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
                  color: Colors.orange[400],
                  child: Padding(
                    padding: EdgeInsets.all(12),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  color: Colors.orange[400],
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Az emelőgépnaplót a gépkezelőnek naprakészen kell '
                      'vezetni és a berendezésnél (gépnél) kell elhelyezni. ',
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
