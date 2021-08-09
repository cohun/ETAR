import 'package:etar_app/Components/default_button.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import '../../../locator.dart';
import 'menu_item.dart';

class NavigationBarEnTablet extends StatelessWidget {

  final int count;

  const NavigationBarEnTablet({Key key, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xFF092A45),
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
              height: 30,
              alignment: Alignment.topCenter,
            ),
            SizedBox(width: 5),
            InkWell(
              child: Text(
                "Etar_en".toUpperCase(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {
                return locator<NavigationService>().navigateTo('enHome');
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
      );
  }
}