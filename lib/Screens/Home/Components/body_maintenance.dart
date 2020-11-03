import 'package:etar_app/Screens/Home/opStart/opStart.dart';
import 'package:flutter/material.dart';

class BodyMaintenance extends StatelessWidget {
  const BodyMaintenance(
      {Key key, this.what, this.imageName, this.text1, this.text2, this.text3})
      : super(key: key);
  final String what;
  final String imageName;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return OpStart(
      what: 'Karbantartás',
      imageName: 'maintenance.jpg',
      text1:
      'Célja az emelőgép eredeti (dokumentáció szerinti) vagy azzal egyenértékű biztonsági állapotának fenntartása. '
          'Ehhez el kell végezni a gyártó utasításai szerinti ellenőrzéseket, beállításokat, kenéseket.',
      text2:
      'A karbantartás elvégzését jegyzőkönyvben és a teherfelvevő eszköz nyilvántartásában kell rögzíteni.',
      text3:
      'Ezen feladat kereteiben gondoskodni kell az eszközök rendeltetésszerű használatáról, illetőleg használaton kívül, '
          'előírás szerinti tárolásáról.',
    );
  }
}
