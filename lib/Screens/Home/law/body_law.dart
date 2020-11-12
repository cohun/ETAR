import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BodyLaw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 680, watch: 200),
      tablet: Grid(size: size, count: 2),
      mobile: Grid(
        size: size,
        count: 1,
      ),
      desktop: Grid(
        size: size,
        count: 3,
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({
    Key key,
    @required this.size,
    this.count,
  }) : super(key: key);

  final Size size;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.78,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: count,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey[700],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height*0.022,),
                    ParagrapRow(size: size, count: count,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height*0.035,),
                        Text(
                          '1993. évi XCIII. törvény a munkavédelemről:',
                          style: TextStyle(color: Colors.white70, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '•   meghatározza az egészséget'
                          ' nem veszélyeztető és biztonságos munkavégzés személyi, tárgyi és szervezeti feltételeit. ',
                          style: TextStyle(color: Colors.white70, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey[700],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height*0.022,),
                    ParagrapRow(size: size, count: count,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height*0.035,),
                        Text(
                          '7/1999. (VIII. 4.) GM rendelet: ',
                          style: TextStyle(color: Colors.white70, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '•   emelőgépekre, teherfelvevő eszközökre a munkavédelmi törvény szélesebbkörű értelmezését adja '
                          'az Emelőgép Biztonsági Szabályzat (továbbiakban EBSZ).',
                          style: TextStyle(color: Colors.white70, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey[700],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height*0.022,),
                    ParagrapRow(size: size, count: count,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        SizedBox(height: size.height*0.035,),
                        Text(
                          'Emelőgép Biztonsági Szabályzat: ',
                          style: TextStyle(color: Colors.white70, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '•   az EBSZ részletesen szabályozza az eszközök tulajdonosának, '
                          'üzemeltetőjének feladatait és a használat módjait',
                          style: TextStyle(color: Colors.white70, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey[700],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height*0.022,),
                    ParagrapRow(size: size, count: count,),
                    Container(
                      height: size.width*0.56/count,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(height: size.height*0.035,),
                            Text(
                              'Az emelőgép üzemeltetője köteles:',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 18),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              '•   az emelőgép, üzembehelyezéséről,',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   a teherfüggesztő eszközök használatba vételéről,',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   rendeltetésszerű használatáról,',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   biztonságos állapotának megőrzéséről,',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   az időszakos vizsgálatról és',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   a karbantartás szakszerű és rendszeres elvégzéséről '
                              'gondoskodni.',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey[700],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height*0.022,),
                    ParagrapRow(size: size, count: count,),
                    Container(
                      height: size.width*0.56/count,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(height: size.height*0.035,),
                            Text(
                              'Az emelőgépek üzemeltetésével kapcsolatos feladatok tehát az alábbi területekre irányulnak:',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 18),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '•   Üzembehelyezés',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   Időszakos vizsgálatok',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   Karbantartások',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   Javítások',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey[700],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height*0.022,),
                    ParagrapRow(size: size, count: count,),
                    Container(
                      height: size.width*0.56/count,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(height: size.height*0.035,),
                            Text(
                              'Az alábbi előírások különösen fontosak:',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 18),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '•   1993. évi XCIII. törvény a munkavédelemről ',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   7/1999. (VIII. 4.) GM rendelet',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   MSZ 6721-1:2011 jelű szabvány az üzembehelyezéshez',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                            Text(
                              '•   MSZ 9721-1:2018 jelű szabvány a vizsgálatokhoz',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ParagrapRow extends StatelessWidget {
  const ParagrapRow({
    Key key,
    @required this.size, this.count,
  }) : super(key: key);

  final Size size;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size.width * 0.66/count,
          height: size.width * 0.15/count,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/ps_man.jpg"),
            ),
          ),
        ),
      ],
    );
  }
}
