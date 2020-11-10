import 'package:flutter/material.dart';

import '../../../constant.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;
  final bool isHighlighted;
  final double fontSize;
  const MenuItem({
    Key key,
    this.title,
    this.press, this.fontSize, this.isHighlighted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: isHighlighted == true ? kTextColor : kTextColor.withOpacity(0.3),
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}