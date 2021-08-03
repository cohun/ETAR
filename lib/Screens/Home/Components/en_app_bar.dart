import 'package:etar_app/Components/default_button.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../locator.dart';
import 'en_app_bar_mobile.dart';
import 'en_app_bar_tablet.dart';
import 'menu_item.dart';

class EnAppBar extends StatelessWidget {
  final int count;
  final bool color;

  const EnAppBar({Key key, this.count, this.color = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 680, watch: 200),
      mobile: NavigationBarEnMobile(),
      tablet: NavigationBarEnTablet(
        count: count,
      ),
      desktop: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: color
                ? [Color(0xFF0D2339), Colors.teal[800], Color(0xFF05182D)]
                : [Color(0xFF05182D), Color(0xFF092A45), Color(0xFF0D2339)],
          ),
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
              "assets/images/etar_en.png",
              height: 40,
              alignment: Alignment.topCenter,
            ),
            SizedBox(width: 5),
            InkWell(
              child: Text(
                "Etar_en".toUpperCase(),
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                return locator<NavigationService>().navigateTo('home');
              },
            ),
            Spacer(),
            MenuItem(
              title: "Főoldal",
              isHighlighted: count == 0 ? true : false,
              color: Colors.white,
              press: () {
                return locator<NavigationService>().navigateTo('landing');
              },
            ),
            MenuItem(
              title: "Üzemviteli dokumentáció",
              isHighlighted: count == 1 ? true : false,
              color: Colors.white,
              press: () {
                return locator<NavigationService>().navigateTo('opDoc');
              },
            ),
            MenuItem(
              title: "Emelőgépnapló",
              isHighlighted: count == 2 ? true : false,
              color: Colors.white,
              press: () {
                return locator<NavigationService>().navigateTo('logBook');
              },
            ),
            DefaultButton(
              text: "ETAR_EN app",
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
