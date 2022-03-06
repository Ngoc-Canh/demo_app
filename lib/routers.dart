import 'package:demo_app/screen/citizen_service/citizen_service_screen.dart';
import 'package:demo_app/screen/detail_violation/detail_violation_screen.dart';
import 'package:demo_app/screen/feedback_history/feedback_history_screen.dart';
import 'package:demo_app/screen/home/home_screen.dart';
import 'package:demo_app/screen/login/login_screen.dart';
import 'package:demo_app/screen/notification/notification_screen.dart';
import 'package:demo_app/screen/parent_home/parent_home_screen.dart';
import 'package:demo_app/screen/setting/setting_screen.dart';
import 'package:demo_app/screen/vpgt_search/VPGTScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routers = {
  HomeScreen.routerName: (context) => const HomeScreen(),
  NotificationScreen.routerName: (context) => const NotificationScreen(),
  SettingScreen.routerName: (context) => const SettingScreen(),
  VPGTScreen.routerName: (context) => const VPGTScreen(),
  ParentHomeScreen.routerName: (context) => const ParentHomeScreen(),
  LoginScreen.routerName: (context) => const LoginScreen(),
  CitizenServiceScreen.routerName: (context) => const CitizenServiceScreen(),
  FeedbackHistoryScreen.routerName: (context) => const FeedbackHistoryScreen(),
  DetailViolationScreen.routerName: (context) => const DetailViolationScreen(),
};