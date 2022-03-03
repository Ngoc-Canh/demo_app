import 'package:demo_app/components/custom_bottom_navbar.dart';
import 'package:demo_app/enum.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SettingScreen extends StatelessWidget {
  static String routerName = "/setting";
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySetting(),
      bottomNavigationBar: CustomBottomNavBar(
        state: MenuState.profile,
      ),
    );
  }
}
