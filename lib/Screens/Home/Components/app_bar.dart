import 'package:etar_app/Components/default_button.dart';
import 'package:etar_app/Screens/Home/Components/app_bar_mobile.dart';
import 'package:etar_app/Screens/Home/Components/app_bar_tablet.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../locator.dart';
import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 680, watch: 200),
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTablet(),
      desktop: Container(
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
            InkWell(
              child: Text(
                "Etar".toUpperCase(),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
              ),
              onTap: () {
                return locator<NavigationService>().navigateTo('home');
              },
            ),
            Spacer(),
            MenuItem(
              title: "Főoldal",
              press: () {
                return locator<NavigationService>().navigateTo('home');
              },
            ),
            MenuItem(
              title: "Üzembehelyezés",
              press: () {
                return locator<NavigationService>().navigateTo('opStart');
              },
            ),
            MenuItem(
              title: "Vizsgálatok",
              press: () {
                return locator<NavigationService>().navigateTo('inspection');
              },
            ),
            MenuItem(
              title: "Karbantartás",
              press: () {
                return locator<NavigationService>().navigateTo('maintenance');
              },
            ),
            MenuItem(
              title: "Javítás",
              press: () {
                return locator<NavigationService>().navigateTo('repair');
              },
            ),
            DefaultButton(
              text: "ETAR app",
              press: () {
                return locator<NavigationService>().navigateTo('etarApp');
              },
            ),
          ],
        ),
      ),
    );
  }
}