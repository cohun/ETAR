import 'package:etar_app/Screens/Home/Components/body_opStart_mobile.dart';
import 'package:etar_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BodyOpStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 680, watch: 200),
      mobile: BodyOpStartMobile(),
      desktop: Container(
        width: size.width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Card(
                      elevation: 12,
                      child: Container(
                        constraints:
                            BoxConstraints(maxHeight: 140, maxWidth: 120),
                        child: Column(
                          children: [
                            Container(
                              constraints: BoxConstraints(maxHeight: 100),
                              child: Image.asset("assets/images/opStart.png"),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Üzembehelyezés",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF372930),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              color: kPrimaryColor,
                              height: 40,
                              width: 160,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'TÖRVÉNYI HÁTTÉR:',
                      style: TextStyle(
                        fontSize: 28,
                        color: kPrimaryColor.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 52,
                  color: kPrimaryColor,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  constraints: BoxConstraints(maxWidth: 200, minWidth: 200),
                  child: Image.asset("assets/images/paragraph-symbol_Q.jpg"),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Üzembehelyezés:',
                style: TextStyle(
                    fontSize: 28,
                    color: kTextColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.5,
                    alignment: Alignment.topCenter,
                    constraints: BoxConstraints(maxWidth: 180, minWidth: 180),
                    child: Image.asset("assets/images/H-ITB_ETAR_LABEL.png"),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.70,
                        child: Card(
                          elevation: 12,
                          margin: EdgeInsets.all(12),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Mind az emelőgépeknél, mind a teherfüggesztő eszközöknél előzetes vizsgálatokra '
                                'és a berendezés nyílvánatrtásba vételére van szükség, melynek eredményes lezárásaként '
                                'munkáltató írásban elrendeli az adott eszköz használatát.',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF372930),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.70,
                        child: Card(
                          elevation: 12,
                          margin: EdgeInsets.all(12),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Általánosságban az emelőgépek rendeltetésszerű használatra való alkalmasságának '
                                'ellenőrzését az MSZ 6721-1:2011 jelű szabvány szabályozza. ',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF372930),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.70,
                        child: Card(
                          elevation: 12,
                          margin: EdgeInsets.all(12),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'A munkavédelmi törvény által veszélyes gépként meghatározott eszközöknél munkavédelmi '
                                'szempontú vizsgálatokat is kell végezni (munkavédelmi üzembehelyezés). Ezen utóbbi vizsgálat '
                                'munkabiztonsági és munkaegészségügyi szaktevékenység, melyet ilyen végzettséggel rendelkező '
                                'szakember végez a működtetés helyszínén telepített emelőgépen.',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF372930),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
