import 'package:etar_app/Components/default_button.dart';
import 'package:etar_app/Screens/Home/Components/navigation_drawer/navigation_drawer.dart';
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

          InkWell(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Icons.menu,
              size: 28,
            ),
          ),
          Spacer(),
          DefaultButton(
            text: "ETAR app",
            press: () {return NavigationDrawer();},
          ),
          SizedBox(width: 20,),
        ],
      ),
    );
  }



}