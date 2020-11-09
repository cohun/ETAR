import 'package:etar_app/Screens/Home/opStart/opStart.dart';
import 'package:flutter/material.dart';

class BodyRepair extends StatelessWidget {
  const BodyRepair(
      {Key key, this.what, this.imageName, this.text1, this.text2, this.text3})
      : super(key: key);
  final String what;
  final String imageName;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return OpStart(
      what: 'Javítás',
      imageName: 'serviceMan.jpg',
      text1:
      'Az emelőgépek és teherfelvevő eszközök biztonságos állaptát az emelőgép tulajdonosának kell helyreállítania '
          'az üzemeltetésből fakadó események, észrevételek alapján. ',
      text2:
      'A javítás elvégzését bizonylatolni szükséges. '
          'A munkát végzőnek tanúsítania kell tevékenységének megállapításait, eredményét. (Jegyzőkönyv) ',
      text3:
      'Csak üzembiztos emelőgéppel szabad munkavégzést folytatni!',
    );
  }
}
