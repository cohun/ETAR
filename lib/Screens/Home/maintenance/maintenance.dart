import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:flutter/material.dart';

class MaintenanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Center(
          child: Text('Karbantartás'),
        ),
      ],
    );
  }
}