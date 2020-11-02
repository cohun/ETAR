import 'package:etar_app/Screens/Home/opStart/opStart.dart';
import 'package:etar_app/Screens/Home/opStart/opStart_mobile.dart';
import 'package:flutter/material.dart';

class BodyOpStartMobile extends StatelessWidget {
  const BodyOpStartMobile(
      {Key key, this.what, this.imageName, this.text1, this.text2, this.text3})
      : super(key: key);
  final String what;
  final String imageName;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          OpStartMobile(
            what: 'Üzembehelyezés',
            imageName: 'opStart.png',
            text1:
                'Mind az emelőgépeknél, mind a teherfüggesztő eszközöknél előzetes vizsgálatokra '
                'és a berendezés nyílvánatrtásba vételére van szükség, melynek eredményes lezárásaként '
                'munkáltató írásban elrendeli az adott eszköz használatát.',
            text2:
                'Általánosságban az emelőgépek rendeltetésszerű használatra való alkalmasságának '
                'ellenőrzését az MSZ 6721-1:2011 jelű szabvány szabályozza.',
            text3:
                'A munkavédelmi törvény által veszélyes gépként meghatározott eszközöknél munkavédelmi '
                'szempontú vizsgálatokat is kell végezni (munkavédelmi üzembehelyezés). Ezen utóbbi vizsgálat '
                'munkabiztonsági és munkaegészségügyi szaktevékenység, melyet ilyen végzettséggel rendelkező '
                'szakember végez a működtetés helyszínén telepített emelőgépen.',
          ),
        ],
      ),
    );
  }
}
