
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
            what: what,
            imageName: imageName,
            text1: text1,
            text2: text2,
            text3: text3,
          ),
        ],
      ),
    );
  }
}
