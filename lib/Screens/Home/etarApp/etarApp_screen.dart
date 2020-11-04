import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:flutter/material.dart';

class EtarAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.blueGrey[900],
          child: ListView(
             children: [
               SizedBox(height: size.height* .12),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 50),
                 child: ListTile(
                   tileColor: Color(0xFF9B0000),
                   title: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Center(
                       child: Text('ETAR = Elektronikus Termék Azonosító Rendszer. Az emelőgépek, teherfelvevő eszközök '
                           'üzemeltetésével kapcsolatos adminisztrációs feladatok ellátásához nyújt hathatós segítséget. ',
                       style: TextStyle(color: Color(0xFFFFFF00)),),
                     ),
                   ),
                 ),
               ),
               Container(
                 width: size.width,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 50),
                   child: Row(
                     mainAxisSize: MainAxisSize.max,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.article, size: 50, color: Colors.white60,),
                       SizedBox(width: 24,),
                       Text('Eszközök nyilvántartása',
                         style: TextStyle(color: Colors.white70, fontSize: 44),),
                       SizedBox(width: 24,),
                       Icon(Icons.double_arrow_sharp, size: 50, color: Colors.white60,),
                       SizedBox(width: 24,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Card(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('műszaki adatok',
                                 style: TextStyle(color: Colors.blueGrey[900], fontSize: 13),),
                             ),
                           ),
                           Card(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('egyedi azonosítók',
                                 style: TextStyle(color: Colors.blueGrey[900], fontSize: 13),),
                             ),
                           ),
                           Card(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('használat helyszíne',
                                 style: TextStyle(color: Colors.blueGrey[900], fontSize: 13),),
                             ),
                           ),
                           Card(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('felhasználó',
                                 style: TextStyle(color: Colors.blueGrey[900], fontSize: 13),),
                             ),
                           ),
                       ],)
                     ],
                   ),
                 ),
               ),
             ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: CustomAppBar(),
        ),
      ],
    );
  }
}