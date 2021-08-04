import 'package:flutter/material.dart';

class BodyLogBook extends StatelessWidget {
  const BodyLogBook({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: size.width,
        height: size.height * 0.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 80),
              child: Column(
                children: [
                  Container(
                    constraints: BoxConstraints(maxHeight: 100),
                    child: Image.asset(
                      "assets/images/logBookIcon.png",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
