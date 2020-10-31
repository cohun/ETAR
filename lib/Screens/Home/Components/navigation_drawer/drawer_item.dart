import 'package:etar_app/Screens/Home/Components/menu_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key key, this.title, this.icon, this.press}) : super(key: key);
  final String title;
  final IconData icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 30,
          ),
          MenuItem(title: title, press: press,),
        ],
      ),
    );
  }
}
