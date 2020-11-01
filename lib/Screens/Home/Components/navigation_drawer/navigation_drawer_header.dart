import 'package:etar_app/constant.dart';
import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: kDarkButton,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            width: 160,
              child: Image.asset("assets/images/Etar.png"),
          ),
          SizedBox(height: 12,),
          Text(
            'App',
            style: TextStyle(color: yellow),
          ),
        ],
      ),
    );
  }
}
