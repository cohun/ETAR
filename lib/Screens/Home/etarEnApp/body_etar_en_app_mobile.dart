import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../locator.dart';

class BodyEtarENAppMobile extends StatelessWidget {
  const BodyEtarENAppMobile({Key key}) : super(key: key);

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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: size.width,
        height: size.height * 0.95,
        child: ListView(
          children: [
            SizedBox(height: size.height * .1),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                      width: size.width * 0.25,
                      child: Image.asset("assets/images/etar_en.png"),
                    ),
                  ),
                  Icon(
                    Icons.double_arrow_sharp,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.35,
                      child:
                      Image.asset('assets/images/google-play-badge.png'),
                    ),
                    onTap: _launchURL,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40),
              child: Center(
                child: Text(
                  'ETAR_EN mobil applikáció az ETAR applikácóra építve, az emelőgépek'
                      ' üzemeltetéséhez szükséges napló bejegyzések elvégzését és adatainak tárolását'
                      ' teszi lehetővé.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Főbb műszaki jellemzők',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'A típus, megnevezés, teherbírás, méret (pl. gémkinyúlás), '
                                'gyártási szám, gyártási év, gyártó és egyéb releváns, '
                                'gépre vonatkozó információ megadása.',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Bejegyzésre jogosultak',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Naplóbejegyzésre jogosultak az alábbi csoportokba sorolhatóak: '
                                '\n\n - ADMIN: az ETAR app-ban irási jogosultsággal rendelkezők köre'
                                '\n - GÉPKEZELŐ: aki az adott emelőgépet jogosult működtetni és ezzel a feladattal megbízták'
                                '\n - KARBANTARTÓ: aki erre a tevékenységre jogosult ill. az üzemeltető ezzel a feladattal megbízott'
                                '\n - VIZSGÁLÓ: aki EBSZ előírásai szerint időszakos vizsgálat elvégzésére jogosult'
                                '\n\n az ADMIN jogosultságú felhasználók tudnak KEZELŐKET, KARBANTARTÓKAT, ill. '
                                'VIZSGÁLÓKAT az egyes emelőgépekhez hozzárendelni.',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Vizsgálati csoportszám',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Az időszakos vizsgálati csoportszámot a napi átlagos használati '
                                'idő és a terhelés függvényében kell meghatározni. '
                                '\nMeg kell adni a megállapító jegyzőkönyv azonosítóját, keltét, készítőjét.'
                                '\nTovábbá a szerkezeti vizsgálat és a fővizsgálat időközét. '
                                '\nA program automatikusan kitölti a bejyegyző nevét és a bejegyzés időpontját. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Üzemeltetésre vonatkozó adatok',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'A munkavédelmi szempontú előzetes vizsgálati jegyzőkönyv '
                                'alapján meg kell adni a vizsgálati dokumentum azonosítóját, kiállítójának '
                                'nevét, jogosultságát, majd ez alapján az üzemeltetést elrendelő '
                                'nevét, beosztását és az üzemeltetés elrendelésének keltét.'
                                '\n\n Üzemeltetés leállítása esetén úgyanúgy meg kell adni a vizsgálati '
                                'jegyzőköny adatait, és végül az elrendelő adatait. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Cserélt fődarabok, részegységek',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Az alkatrész azonosítója, megnevezése, jellemző mérete, '
                                'a cserét végző neve, valamint a csere dátuma kerül rögzítésre',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Érintésvédelem',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Érintésvédelmi, villámvédelmi, károsanyag-kibocsátási mérések '
                                'jegyzőkönyvei és azok megállapításai kerülnek rögzítésre. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Időszakos vizsgálatok',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'A vizsgálat megnevezése, a jegyzőkönyv azonosítója, '
                                'kelte, megállapítása, készítője és jogosultsága kerül rögzítésre. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Terhelési próba',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'A terhelési próba jellege (üzemi terheléses vizsgálat, '
                                'működőképesség vizsgálat) és adatai, a jegyzőkönyv azonosítója, '
                                'kelte, megállapítása, készítője és jogosultsága kerül rögzítésre. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Egyenértékű biztonság igazolása',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Az emelőgépre vonatkozó szabványtól való eltérés alkalmazása '
                                'esetén az egyenértékű biztonság igazolásának adatai.',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Center(
                      child: Text(
                        'Műszakos vizsgálatok',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white60,
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.85,
                      child: Card(
                        color: Color(0xff3095C3),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Az emelőgépnaplót a gépkezelő naprakészen vezeti: '
                                'Beírás: „műszakos vizsgálatot elvégeztem a berendezés üzemképes.” '
                                'Ha a műszakos vizsgálat során a biztonsági berendezésekben hibát '
                                'észlel, beírja a hibát és a gép minősítése „berendezés üzemképtelen”. '
                                'Hibás biztonsági berendezésekkel a berendezést üzemeltetni TILOS! '
                                'A berendezést szakszerelővel meg kell javíttatni. '
                                'A javítás tényét az emelőgép naplóban rögzíteni kell. '
                                'A berendezést csak ezután szabad újra üzemeltetni. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
