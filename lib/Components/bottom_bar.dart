
import 'package:flutter/material.dart';
import 'bottom_bar_column.dart';
import 'info_text.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.blueGrey[900],
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(
                heading: 'Kapcsolat',
                s1: 'WEB',
                s2: 'H-ITB',
                s3: '',
              ),
              BottomBarColumn(
                heading: 'Segédletek',
                s1: 'Működési leírások',
                s2: 'Oktató anyagok',
                s3: 'GYIK',
              ),
              BottomBarColumn(
                heading: 'Videók',
                s1: 'YouTube',
                s2: '',
                s3: '',
              ),
              Container(
                color: Colors.blueGrey,
                width: 2,
                height: 150,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoText(
                    type: 'Email',
                    text: 'etar@h-itb.hu',
                  ),
                  SizedBox(height: 5),
                  InfoText(
                    type: 'Cím',
                    text: 'H-ITB Kft. 1119 Budapest Kelenvölgyi htsr. 5',
                  )
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.blueGrey,
          ),
          SizedBox(height: 20),
          Text(
            'Copyright © 2020 | Horváth Attila',
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}