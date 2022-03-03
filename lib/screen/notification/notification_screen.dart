import 'package:demo_app/enum.dart';
import 'package:demo_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom_navbar.dart';
import 'components/body.dart';
import 'components/notification_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  static String routerName = "/notification";

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      appBar: NotificationAppBar(),
      body: BodyNotification(),
      bottomNavigationBar: CustomBottomNavBar(
        state: MenuState.notification,
      ),
    );
  }
}