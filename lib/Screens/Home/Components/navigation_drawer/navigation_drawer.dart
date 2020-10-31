import 'package:etar_app/Screens/Home/Components/navigation_drawer/drawer_item.dart';
import 'package:etar_app/Screens/Home/Components/navigation_drawer/navigation_drawer_header.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.white,
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16),
      ],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(title: 'Üzembehelyezés', icon: Icons.article, press: () => Navigator.pop(context),),
          DrawerItem(title: 'Vizsgálatok', icon: Icons.assignment_turned_in_sharp, press: () {},),
          DrawerItem(title: 'Karbantartás', icon: Icons.work, press: () {},),
          DrawerItem(title: 'Javítás', icon: Icons.assistant, press: () {},),
        ],
      ),
    );
  }
}
