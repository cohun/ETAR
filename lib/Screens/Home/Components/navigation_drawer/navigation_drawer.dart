import 'package:etar_app/Screens/Home/Components/navigation_drawer/drawer_item.dart';
import 'package:etar_app/Screens/Home/Components/navigation_drawer/navigation_drawer_header.dart';
import 'package:etar_app/locator.dart';
import 'package:etar_app/services/navigation_service.dart';
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
          DrawerItem(
              title: 'Főoldal', icon: Icons.home,
              press: () {
                locator<NavigationService>().navigateTo('home');
                return Navigator.of(context).pop();
              }
          ),
          DrawerItem(
            title: 'Üzembehelyezés', icon: Icons.article,
            press: () {
              locator<NavigationService>().navigateTo('opStart');
              return Navigator.of(context).pop();
            }
          ),
          DrawerItem(
            title: 'Vizsgálatok', icon: Icons.assignment_turned_in_sharp,
            press: () {
              locator<NavigationService>().navigateTo('inspection');
              return Navigator.of(context).pop();
            },),
          DrawerItem(
            title: 'Karbantartás', icon: Icons.work,
            press: () {
              locator<NavigationService>().navigateTo('maintenance');
              return Navigator.of(context).pop();
            },),
          DrawerItem(
            title: 'Javítás', icon: Icons.assistant,
            press: () {
              locator<NavigationService>().navigateTo('repair');
              return Navigator.of(context).pop();
            },),
          DrawerItem(
            title: 'ETAR App', icon: Icons.app_blocking,
            press: () {
              locator<NavigationService>().navigateTo('etarApp');
              return Navigator.of(context).pop();
            },),
        ],
      ),
    );
  }
}
