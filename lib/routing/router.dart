
import 'package:etar_app/Screens/Home/Components/contract.dart';
import 'package:etar_app/Screens/Home/Components/iframe_screen.dart';
import 'package:etar_app/Screens/Home/etarApp/etarApp_screen.dart';
import 'package:etar_app/Screens/Home/home_screen.dart';
import 'package:etar_app/Screens/Home/inspection/inspection_screen.dart';
import 'package:etar_app/Screens/Home/law/law_screen.dart';
import 'package:etar_app/Screens/Home/maintenance/maintenance_screen.dart';
import 'package:etar_app/Screens/Home/opStart/opStart_screen.dart';
import 'package:etar_app/Screens/Home/repair/repair_screen.dart';
import 'package:etar_app/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeScreen());
    case OpStart:
      return _getPageRoute(OpStartScreen());
    case Inspection:
      return _getPageRoute(InspectionScreen());
    case Maintenance:
      return _getPageRoute(MaintenanceScreen());
    case Repair:
      return _getPageRoute(RepairScreen());
    case EtarApp:
      return _getPageRoute(EtarAppScreen());
    case Law:
      return _getPageRoute(LawScreen());
    case Iframe:
      return _getPageRoute(IframeScreen());
    case Contract:
      return _getPageRoute(ContractScreen());
    default:
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}