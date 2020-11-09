import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:etar_app/Screens/Home/etarApp/etarApp_mobile.dart';
import 'package:etar_app/Screens/Home/etarApp/etarApp_tablet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class EtarAppScreen extends StatelessWidget {

  _launchURL() async {
    const url = 'https://play.google.com/store/apps/details?id=com.attila.hitb&hl=en_US&gl=US&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _showDialog(BuildContext context, String title, String text) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          elevation: 5.0,
          title: Text("$title:"),
          content: Text("$text"),
          actions: <Widget>[
            FlatButton(
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
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 680, watch: 200),
      mobile: EtarAppMobile(),
      tablet: EtarAppTablet(),
      desktop: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/ETAR_canvas.png"),
                fit: BoxFit.cover,
              ),
            ),

            child: ListView(
               children: [
                 SizedBox(height: size.height* .1),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                   child: Row(
                     mainAxisSize: MainAxisSize.max,
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Container(
                         width: size.width * 0.15,
                         child: Image.asset("assets/images/Etar.png"),
                       ),
                       Icon(Icons.double_arrow_sharp, size: 50, color: Colors.white60,),
                       InkWell(
                         child: Container(
                           width: size.width * 0.30,
                             child: Image.asset('assets/images/google-play-badge.png'),
                         ),
                         onTap: _launchURL,
                       ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 50),
                       child: Center(
                         child: Text('Elektronikus Termék Azonosító Rendszer. Emelőgépek, teherfelvevő eszközök '
                             'üzemeltetésével kapcsolatos adminisztrációs feladatok ellátásához nyújt hathatós segítséget. ',
                         style: TextStyle(
                             color: Colors.black54,
                             fontWeight: FontWeight.bold,
                              fontSize: 16,
                         ),),
                       ),
                     ),
                 Divider(color: Colors.white70, thickness: 1,),
                 Container(
                   width: size.width,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50),
                     child: Row(
                       mainAxisSize: MainAxisSize.max,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Icon(Icons.people_alt_sharp, size: 50, color: Colors.white60,),
                             SizedBox(width: 24,),
                             Text('Felhasználói hozzáférések',
                               style: TextStyle(color: Colors.white70, fontSize: 32),),
                           ],
                         ),
                         Icon(Icons.double_arrow_sharp, size: 50, color: Colors.black54,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.quick_contacts_mail_sharp, color: Colors.white70,),
                                       SizedBox(width: 8,),
                                       Text('jogosultság osztó',
                                         style: TextStyle(
                                             color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Jogosultság osztó', 'Ha egy cég be akar lépni az ETAR rendszerbe, '
                                     'először is szerződést kell kötni a használatra vonatkozóan. Itt ki kell jelölni '
                                     'egy embert, aki az adott cégnél a jogosultságokat kezeli: ő lesz a jogosultság osztó!');
                               },
                             ),
                             InkWell(
                               child: InkWell(
                                 child: Card(
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       children: [
                                         Icon(Icons.auto_fix_high, color: Colors.white70,),
                                         SizedBox(width: 8,),
                                         Text('írási jogosultság',
                                           style: TextStyle(
                                             color: Colors.white70, fontSize: 18,
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                   color: Colors.blue[800],
                                 ),
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Írási jogosultság', 'ETAR rendszerben kezelt adatok megváltoztatásához, '
                                     'írási jogosultságra van szükség. Ezt az adott cég jogosultság kezelője adja meg. '
                                     );
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.auto_stories, color: Colors.white70),
                                       SizedBox(width: 8,),
                                       Text('olvasási jogosultság',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Olvasási jogosultság', 'ETAR rendszerben kezelt adatok'
                                 ' megtekintéséhez, olvasási jogosultságra van szükség. Ezt az adott cég jogosultság '
                                     'kezelője adja meg.' );
                               },
                             ),
                           ],),
                       ],
                     ),
                   ),
                 ),
                 Divider(color: Colors.white70, thickness: 1,),
                 Container(
                   width: size.width,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50),
                     child: Row(
                       mainAxisSize: MainAxisSize.max,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Icon(Icons.article, size: 50, color: Colors.white60,),
                             SizedBox(width: 24,),
                             Text('Eszközök nyilvántartása',
                               style: TextStyle(color: Colors.white70, fontSize: 32),),
                           ],
                         ),
                         Icon(Icons.double_arrow_sharp, size: 50, color: Colors.black54,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.height, color: Colors.white70,),
                                       SizedBox(width: 8,),
                                       Text('műszaki adatok',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Műszaki adatok', 'Az eszköz típusa, mérete, megnevezése, '
                                     'teherbírása, gyártója és a gyártás éve kerül rögzítésre');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                       children: [
                                       Icon(Icons.nfc_sharp, color: Colors.white70,),
                                   SizedBox(width: 8,),
                                   Text('egyedi azonosítók',
                                     style: TextStyle(
                                       color: Colors.white70, fontSize: 18,
                                     ),
                                   ),
                                       ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Egyedi azonosítók', 'Az eszköz gyári száma, '
                                     'egy további tetszőleges azonosító, valamint az NFC kód kerül rögzítésre');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                       children: [
                                       Icon(Icons.house_siding_sharp, color: Colors.white70,),
                                   SizedBox(width: 8,),
                                   Text('használat helyszíne',
                                     style: TextStyle(
                                       color: Colors.white70, fontSize: 18,
                                     ),
                                   ),
                                       ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Használat helyszíne', 'Tetszőleges számú helyszínt rögzíthetünk, '
                                     'mely helyszínek közül kiválasztjuk és hozzárendeljük az aktuálisat az adott eszközhöz. '
                                     'Így mindig láthatóvá válik, hogy az adott eszköz hol van használatban?');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                       children: [
                                       Icon(Icons.person, color: Colors.white70,),
                                   SizedBox(width: 8,),
                                   Text('felhasználó',
                                     style: TextStyle(
                                       color: Colors.white70, fontSize: 18,
                                     ),
                                   ),
                                       ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Felhasználó/ üzemeltető', 'Tetszőleges számú üzemeltetőt rögzíthetünk '
                                     'és így dolgozóknak lehet utána névreszólóan az eszközöket kiadni.');
                               },
                             ),
                         ],),
                       ],
                     ),
                   ),
                 ),
                 Divider(color: Colors.white70, thickness: 1,),
                 Container(
                   width: size.width,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50),
                     child: Row(
                       mainAxisSize: MainAxisSize.max,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Icon(Icons.youtube_searched_for_sharp, size: 50, color: Colors.white60,),
                             SizedBox(width: 24,),
                             Text('Időpontok figyelése',
                               style: TextStyle(color: Colors.white70, fontSize: 32),),
                           ],
                         ),
                         Icon(Icons.double_arrow_sharp, size: 50, color: Colors.black54,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.mark_chat_read, color: Colors.white70,),
                                       SizedBox(width: 8,),
                                       Text('üzembehelyezés jegyzőkönyve',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Üzembehelyezés jegyzőkönyve', 'Az emelőgép használatba vételét írásban '
                                     'kell elrendelni, melyet az üzembehelyezési jegyzőkönyv tanúsít. Minden eszköz könnyen beazonosítható '
                                     'és a hozzátartozó üzembehelyezési jegyzőkönyv azonnal elérhető');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.assignment_turned_in_sharp, color: Colors.white70,),
                                       SizedBox(width: 8,),
                                       Text('időszakos vizsgálatok jegyzőkönyvei',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Időszakos vizsgálatok jegyzőkönyvei', 'Az elvégzett időszakos vizsgálatok '
                                     'jegyzőkönyvei tárolásra kerülnek. '
                                     'Minden eszköz könnyen beazonosítható, érvényessége ellenőrizhető és a következő, esedékes vizsgálat '
                                     'időpontjára a program hívja fel a figyelmet.');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.work, color: Colors.white70,),
                                       SizedBox(width: 8,),
                                       Text('karbantartások jegyzőkönyvei',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Karbantartások jegyzőkönyvei', 'Az elvégzett karbantartások '
                                     'jegyzőkönyvei tárolásra kerülnek. '
                                     'Minden eszköz könnyen beazonosítható és az összes elvégzett karbantartás időpontja azonnal elérhető.');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.verified_outlined, color: Colors.white70,),
                                       SizedBox(width: 8,),
                                       Text('javítások jegyzőkönyvei',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Javítások jegyzőkönyvei', 'Az elvégzett javítások '
                                     'jegyzőkönyvei tárolásra kerülnek. '
                                     'Minden eszköz könnyen beazonosítható és az összes elvégzett javítás időpontja azonnal elérhető.');
                               },
                             ),
                           ],),
                       ],
                     ),
                   ),
                 ),
                  Divider(color: Colors.white70, thickness: 1,),
                 Container(
                   width: size.width,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50),
                     child: Row(
                       mainAxisSize: MainAxisSize.max,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Icon(Icons.article, size: 50, color: Colors.white60,),
                             SizedBox(width: 24,),
                             Text('Adatok naprakész elérése',
                               style: TextStyle(color: Colors.white70, fontSize: 32),),
                           ],
                         ),
                         Icon(Icons.double_arrow_sharp, size: 50, color: Colors.black54,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.mark_chat_read, color: Colors.white70),
                                       SizedBox(width: 8,),
                                       Text('eszköz azonosítás NFC chip alapján',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Azonosítás NFC chippel', 'Az adattáblára helyezett NFC chip adatait '
                                     'NFC képes mobil telefonnal lehet kiolvasni. Az így kiolvasott kód alapján a program megkeresi az adott '
                                     'eszköz valamennyi adatát.');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.assignment_turned_in_sharp, color: Colors.white70),
                                       SizedBox(width: 8,),
                                       Text('eszköz azonosítás gyáriszám alapján',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Azonosítás gyáriszámmal', 'Az adattáblán szereplő gyáriszám '
                                     'alapján a program megkeresi az adott eszköz valamennyi adatát.');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.work, color: Colors.white70),
                                       SizedBox(width: 8,),
                                       Text('szűrések helyszínre, felhasználóra',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Szűrések', 'Helyszínre, üzemeltetőre és vizsgálati lejárat időpontjára '
                                     'lehet leszűrni eszközeinket.');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.pending_actions_outlined, color: Colors.white70),
                                       SizedBox(width: 8,),
                                       Text('szűrések következő időpontra',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Szűrések', 'Helyszínre, üzemeltetőre és vizsgálati lejárat időpontjára '
                                     'lehet leszűrni eszközeinket.');
                               },
                             ),
                             InkWell(
                               child: Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       Icon(Icons.assistant, color: Colors.white70),
                                       SizedBox(width: 8,),
                                       Text('excel export',
                                         style: TextStyle(
                                           color: Colors.white70, fontSize: 18,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 color: Colors.blue[800],
                               ),
                               onTap: () {
                                 return _showDialog(context, 'Excel export', 'Az eszközök adatai és '
                                     'a következő időpont exportálható egy excel fájlba.');
                               },
                             ),
                           ],),
                       ],
                     ),
                   ),
                 ),
                 Divider(color: Colors.white70, thickness: 1,),
               ],
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: CustomAppBar(),
          ),
        ],
      ),
    );
  }
}