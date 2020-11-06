
import 'package:etar_app/constant.dart';
import 'package:etar_app/locator.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';

class OpStartTablet extends StatelessWidget {
  const OpStartTablet(
      {Key key, this.what, this.imageName, this.text1, this.text2, this.text3})
      : super(key: key);
  final String what;
  final String imageName;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                            child: Image.asset("assets/images/$imageName"),
                          ),
                          Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '$what',
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
                    'Törvényi háttér:',
                    style: TextStyle(
                      fontSize: 28,
                      color: kPrimaryColor.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.double_arrow_sharp,
                size: 52,
                color: kPrimaryColor,
              ),
              InkWell(
                onTap: () => locator<NavigationService>().navigateTo('law'),
                child: Container(
                  alignment: Alignment.bottomRight,
                  constraints: BoxConstraints(maxWidth: 200, minWidth: 200),
                  child: Image.asset("assets/images/paragraph-symbol_Q.jpg"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              '$what',
              style: TextStyle(
                  fontSize: 36, color: kTextColor, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
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
                      width: size.width * 0.65,
                      child: Card(
                        elevation: 12,
                        margin: EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            '$text1',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF372930),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.65,
                      child: Card(
                        elevation: 12,
                        margin: EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            '$text2 ',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF372930),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.65,
                      child: Card(
                        elevation: 12,
                        margin: EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            '$text3',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF372930),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
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
