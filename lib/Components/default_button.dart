import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        color: Color(0xFF9B0000),
        onPressed: press,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Color(0xFFFFFF00)),
        ),
      ),
    );
  }
}