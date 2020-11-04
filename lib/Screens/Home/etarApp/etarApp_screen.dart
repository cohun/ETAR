import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:flutter/material.dart';

class EtarAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        ListView(
           children: [
             SizedBox(height: size.height* .15),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: ListTile(
                 tileColor: Color(0xFF9B0000),
                 title: Text('ETAR = Elektronikus Termék Azonosító Rendszer. Az emelőgépek, teherfelvevő eszközök '
                     'üzemeltetésével kapcsolatos adminisztrációs feladatok ellátásához nyújt hathatós segítséget. ',
                 style: TextStyle(color: Color(0xFFFFFF00)),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
               child: ListTile(
                 tileColor: Color(0xFF241424),
                 leading: Icon(Icons.article, size: 50, color: Colors.white70,),
                 title: Text('Nyilvántartási kötelezettség',
                   style: TextStyle(color: Colors.white70),),
                 subtitle: Text('Mely adatokról van szó?',
                   style: TextStyle(color: Colors.white70),),
               ),
             ),
           ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: CustomAppBar(),
        ),
      ],
    );
  }
}