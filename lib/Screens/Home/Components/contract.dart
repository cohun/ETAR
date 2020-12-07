import 'package:etar_app/Components/dialogs.dart';
import 'package:etar_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContractScreen extends StatelessWidget {
  _launchURL() async {
    const url = 'https://product-upload.web.app/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[700],
        centerTitle: true,
        title: Text(
          'Használat feltételei',
          style: TextStyle(color: Colors.white),
        ),
        actions: [IconButton(
          icon: Icon(Icons.login),
          onPressed: _launchURL,
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.blueGrey[700],
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: Text(
                          'ETAR rendszer használatának megkezdése:',
                          style: TextStyle(
                              fontSize: 32.0,
                              color: Colors.white70,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '•   A használat megkezdéséhez szerződés megkötése szükséges a Szolgáltatóval.',
                        style:
                        TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 1.1),
                      ),
                      Text(
                          '•   Szerződéskötéskor üzemeltető cég kijelöli azon munkatársát, aki '
                          'a cégen belüli felvételeket és jogosultságokat kezelni fogja.',
                        style:
                        TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 1.1),
                      ),
                      Text(
                          '•   A jogosultság kezelő, miután létrehozza saját felhasználói fiókját, '
                          'a cégnév és saját nevének megadásával a programon belül kezdeményezi a '
                          'cég egyedi azonosítójának - az ETAR kódnak - a kiadását',
                        style:
                        TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 1.1),
                      ),
                      Text(
                          '•   Ezt követően szolgáltató a megkötött szerződés alapján érvényesíti az ETAR kódot.',
                        style:
                        TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 1.1),
                      ),
                      Text(
                          '•   Innentől kezdve az érvényes ETAR kóddal rendelkező cég élvezheti '
                          'a rendszer teljes funkcionalitását és a jogosultság kezelő, saját '
                          'hatáskörben további felhasználókat vehet fel ill. jogosultságukat kezelheti.',
                        style:
                        TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 1.1),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Card(
                color: Colors.blueGrey[700],
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text(
                          'Felhasználók felvétele az ETAR rendszerbe:',
                          style:
                              TextStyle(
                                  fontSize: 32.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          '•   Új felhasználó, miután letöltötte az applikációt és létrehozta saját felhasználói '
                          'fiókját a rendelkezésére bocsájtott ETAR kóddal kezdeményezheti felvételét '
                          'az ETAR rendszerbe.',
                          style:
                          TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 1.1),
                      ),
                      Text(
                          '•   A cég jogosultság kezelője bírálja el a felvételi kérelmet és '
                          'dönti el milyen jogosultsággal rendelkezzen az új felhasználó.',
                        style:
                        TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 1.1),
                      ),
                      Text(
                          '•   Alapvetően irási jogosultság és olvasási jogosultság szerezhető meg. '
                          'Az olvasási jogosultság olyan felhasználóknak célszerű, akik adminisztrációval '
                          'nem foglalkoznak, viszont felhasználóként releváns információkat '
                          'tudhatnak meg az általuk üzemeltetett eszközökről. (pl. érvényesség).',
                        style:
                        TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 1.1),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                  child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      elevation: 5,
                      color: kPrimaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Általános Felhasználási Feltételek',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return PolicyDialog(mdFileName: 'ASZF.md');
                            });
                      },
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    RaisedButton(
                      elevation: 5,
                      color: kPrimaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Adatvédelmi Irányelvek',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return PolicyDialog(mdFileName: 'AdatElvek.md');
                            });
                      },
                    ),
                  ],
                ),
              )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
