import 'package:etar_app/Screens/Home/opStart/opStart.dart';
import 'package:flutter/material.dart';

class BodyInspection extends StatelessWidget {
  const BodyInspection(
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
      what: 'Vizsgálat',
      imageName: 'inspection.jpg',
      text1:
      'Minden emlőgépet, teherfüggesztő eszközt üzembehelyezése után, meghatározott időközönként,'
      ' 1. szerkezeti vizsgálatnak, 2. fővizsgálatnak és 3. időszakos biztonsági felülvizsgálatnak '
      'kell alávetni',
      text2:
      'Az EBSZ-en kívül az MSZ 9721-1:2018 jelű szabvány tartalmazza a vizsgálatok szempontjait, követelményeit',
      text3:
      'A vizsgálat eredményét jegyzőkönyvben és a teherfelvevő eszköz nyilvántartásában kell rögzíteni',
    );
  }
}
