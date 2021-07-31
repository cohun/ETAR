import 'package:flutter/material.dart';

import '../../../constant.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;
  final bool isHighlighted;
  final double fontSize;
  final Color color;
  const MenuItem({
    Key key,
    this.title,
    this.press, this.fontSize, this.isHighlighted, this.color = kTextColor,
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
            color: isHighlighted == true ? color : color.withOpacity(0.3),
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}