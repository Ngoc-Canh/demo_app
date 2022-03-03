import 'package:demo_app/routers.dart';
import 'package:demo_app/screen/home/home_screen.dart';
import 'package:demo_app/screen/notification/notification_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routers,
      initialRoute: NotificationScreen.routerName,
    );
  }
}