
import 'package:etar_app/constant.dart';
import 'package:flutter/material.dart';

class OpStartMobile extends StatelessWidget {
  const OpStartMobile({Key key, this.what, this.imageName, this.text1, this.text2, this.text3}) : super(key: key);
  final String what;
  final String imageName;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
        width: size.width*.84,
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
                        BoxConstraints(maxHeight: 70, maxWidth: 60),
                        child: Column(
                          children: [
                            Container(
                              constraints: BoxConstraints(maxHeight: 46),
                              child: Image.asset("assets/images/$imageName"),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: what != 'Üzembehelyezés' ?
                              Text(
                              '$what',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color(0xFF372930),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.justify,
                            ) :
                                Column(
                                  children: [
                                    Text(
                                      'Üzembe',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Color(0xFF372930),
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                    Text(
                                      'helyezés',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Color(0xFF372930),
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                              color: kPrimaryColor,
                              height: 24,
                              width: 120,
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                Icon(
                  Icons.double_arrow_sharp,
                  size: 20,
                  color: kPrimaryColor,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  width: size.width*0.25,
                  constraints: BoxConstraints(maxWidth: 140, minWidth: 35),
                  child: Image.asset("assets/images/paragraph-symbol_Q.jpg"),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Divider(thickness: 2,),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.center,
              child: Text(
                '$what',
                style: TextStyle(
                    fontSize: 24,
                    color: kTextColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * 0.2,
                    alignment: Alignment.topCenter,
                    constraints: BoxConstraints(maxWidth: 70, minWidth: 70),
                    child: Image.asset("assets/images/H-ITB_ETAR_LABEL.png"),
                  ),
                  SizedBox(width: 16,),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.61,
                        child: Card(
                          elevation: 12,
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '$text1',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF372930),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.61,
                        child: Card(
                          elevation: 12,
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '$text2 ',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF372930),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.61,
                        child: Card(
                          elevation: 12,
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '$text3',
                              style: TextStyle(
                                  fontSize: 10,
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
    );
  }
}
