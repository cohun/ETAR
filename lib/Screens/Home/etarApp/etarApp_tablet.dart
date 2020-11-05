import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:flutter/material.dart';

class EtarAppTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.blueGrey[900],
          child: ListView(
            children: [
              SizedBox(height: size.height * .12),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: ListTile(
                    tileColor: Color(0xFF9B0000),
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'ETAR = Elektronikus Termék Azonosító Rendszer. Az emelőgépek, teherfelvevő eszközök '
                          'üzemeltetésével kapcsolatos adminisztrációs feladatok ellátásához nyújt hathatós segítséget. ',
                          style: TextStyle(color: Color(0xFFFFFF00)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.white70,
                thickness: 1,
              ),
              Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.people_alt_sharp,
                            size: 30,
                            color: Colors.white60,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Felhasználói hozzáférések',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 22),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.double_arrow_sharp,
                        size: 30,
                        color: Colors.white60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.quick_contacts_mail_sharp),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'jogosultság osztó',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.auto_fix_high),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'írási jogosultság',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.auto_stories),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'olvasási jogosultság',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.white70,
                thickness: 1,
              ),
              Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.article,
                            size: 30,
                            color: Colors.white60,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Eszközök nyilvántartása',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 22),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.double_arrow_sharp,
                        size: 30,
                        color: Colors.white60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.height),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'műszaki adatok',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.nfc_sharp),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'egyedi azonosítók',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.house_siding_sharp),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'használat helyszíne',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'felhasználó',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.white70,
                thickness: 1,
              ),
              Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.youtube_searched_for_sharp,
                            size: 30,
                            color: Colors.white60,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Időpontok figyelése',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 22),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.double_arrow_sharp,
                        size: 30,
                        color: Colors.white60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.mark_chat_read),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'üzembehelyezés jegyzőkönyve',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.assignment_turned_in_sharp),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'időszakos vizsgálatok jegyzőkönyvei',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.work),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'karbantartások jegyzőkönyvei',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.verified_outlined),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'javítások jegyzőkönyvei',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.white70,
                thickness: 1,
              ),
              Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.article,
                            size: 30,
                            color: Colors.white60,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Adatok naprakész elérése',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 22),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.double_arrow_sharp,
                        size: 30,
                        color: Colors.white60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.mark_chat_read),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'eszköz azonosítás NFC chip alapján',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.assignment_turned_in_sharp),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'eszköz azonosítás gyáriszám alapján',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.work),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'szűrések helyszínre, felhasználóra',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.pending_actions_outlined),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'szűrések következő időpontra',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.assistant),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'excel export',
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.white70,
          thickness: 1,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: CustomAppBar(),
        ),
      ],
    );
  }
}
