import 'package:etar_app/Components/default_button.dart';
import 'package:flutter/material.dart';


import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/ETAR_ICON.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Etar".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
          ),
          Spacer(),
          MenuItem(
            title: "Főoldal",
            press: () {},
          ),
          MenuItem(
            title: "Üzembehelyezés",
            press: () {},
          ),
          MenuItem(
            title: "Vizsgálatok",
            press: () {},
          ),
          MenuItem(
            title: "Karbantartás",
            press: () {},
          ),
          MenuItem(
            title: "Javítás",
            press: () {},
          ),
          DefaultButton(
            text: "ETAR app",
            press: () {},
          ),
        ],
      ),
    );
  }
}