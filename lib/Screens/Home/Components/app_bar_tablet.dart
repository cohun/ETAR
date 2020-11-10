import 'package:etar_app/Components/default_button.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';

import '../../../locator.dart';
import 'menu_item.dart';

class NavigationBarTablet extends StatelessWidget {

  final int count;

  const NavigationBarTablet({Key key, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
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
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
              ),
              onTap: () {return locator<NavigationService>().navigateTo('home');},
            ),
            Spacer(),
           
            MenuItem(
              title: "Üzembehelyezés",
              isHighlighted: count == 1 ? true : false,
              fontSize: 11,
              press: () {
                return locator<NavigationService>().navigateTo('opStart');
              },
            ),
            MenuItem(
              title: "Vizsgálatok",
              isHighlighted: count == 2 ? true : false,
              fontSize: 11,
              press: () {
                return locator<NavigationService>().navigateTo('inspection');
              },
            ),
            MenuItem(
              title: "Karbantartás",
              isHighlighted: count == 3 ? true : false,
              fontSize: 11,
              press: () {
                return locator<NavigationService>().navigateTo('maintenance');
              },
            ),
            MenuItem(
              title: "Javítás",
              isHighlighted: count == 4 ? true : false,
              fontSize: 11,
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
      );
  }
}