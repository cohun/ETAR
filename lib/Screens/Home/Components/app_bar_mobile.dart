import 'package:etar_app/Components/default_button.dart';
import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(width: 20,),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          Spacer(),
          DefaultButton(
            text: "ETAR app",
            press: () {},
          ),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}