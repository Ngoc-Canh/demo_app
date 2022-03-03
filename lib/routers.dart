import 'package:demo_app/screen/home/home_screen.dart';
import 'package:demo_app/screen/notification/notification_screen.dart';
import 'package:demo_app/screen/setting/setting_screen.dart';
import 'package:demo_app/screen/vpgt_search/VPGTScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routers = {
  HomeScreen.routerName: (context) => const HomeScreen(),
  NotificationScreen.routerName: (context) => const NotificationScreen(),
  SettingScreen.routerName: (context) => const SettingScreen(),
  VPGTScreen.routerName: (context) => const VPGTScreen(),
};