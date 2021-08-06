import 'package:etar_app/Screens/Home/Components/en_app_bar.dart';
import 'package:etar_app/Screens/Home/opDoc/body_op_doc.dart';
import 'package:flutter/material.dart';

class OpDocScreen extends StatelessWidget {
  const OpDocScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        EnAppBar(
          count: 1,
        ),
        Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF05182D),
                  Color(0xFF092A45),
                  Color(0xFF0D2339)
                ],
              ),
            ),
            height: size.height - 130,
            width: size.width,
            child: BodyOpDoc()),
      ],
    );
  }
}
