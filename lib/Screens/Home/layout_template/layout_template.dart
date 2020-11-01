import 'package:etar_app/Components/bottom_bar.dart';
import 'package:etar_app/Screens/Home/Components/centered_view.dart';
import 'package:etar_app/Screens/Home/Components/navigation_drawer/navigation_drawer.dart';
import 'package:etar_app/locator.dart';
import 'package:etar_app/routing/route_names.dart';
import 'package:etar_app/routing/router.dart';
import 'package:etar_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        body: HomeView(
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                ),
                BottomBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
