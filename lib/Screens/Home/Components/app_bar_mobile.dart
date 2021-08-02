import 'package:etar_app/Components/default_button.dart';
import 'package:etar_app/locator.dart';
import 'package:etar_app/services/navigation_service.dart';
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
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Icons.menu,
              size: 28,
              color: Colors.white70,
            ),
          ),
          Spacer(),
          DefaultButton(
            text: "Főoldal",
            press: () {
              return locator<NavigationService>().navigateTo('landing');
            },
          ),
          SizedBox(
            width: 20,
          ),
          DefaultButton(
            text: "ETAR app",
            press: () {
              return locator<NavigationService>().navigateTo('etarApp');
            },
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
