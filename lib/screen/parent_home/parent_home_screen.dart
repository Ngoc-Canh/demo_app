import 'package:demo_app/screen/home/home_screen.dart';
import 'package:demo_app/screen/notification/notification_screen.dart';
import 'package:demo_app/screen/setting/setting_screen.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class ParentHomeScreen extends StatefulWidget {
  static String routerName = "/parentHome";

  const ParentHomeScreen({Key? key}) : super(key: key);

  @override
  State<ParentHomeScreen> createState() => _ParentHomeScreenState();
}

class _ParentHomeScreenState extends State<ParentHomeScreen> {
  var _currentIndex = 0;

  final _pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        onPageChanged: (newIndex) => setState(
          () {
            _currentIndex = newIndex;
          },
        ),
        children: const [
          HomeScreen(),
          NotificationScreen(),
          SettingScreen(),
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: getProportionateScreenWidth(70),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(getProportionateScreenWidth(20)),
                topRight: Radius.circular(getProportionateScreenWidth(20)),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -15),
                  blurRadius: 20,
                  color: const Color(0xFFDADADA).withOpacity(0.15),
                ),
              ],
            ),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  itemBottomNavBar(0, Icons.home, "Trang chủ"),
                  itemBottomNavBar(1, Icons.notifications, "Thông báo"),
                  itemBottomNavBar(2, Icons.settings, "Cài đặt"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemBottomNavBar(int index, IconData icon, String text) {
    Color activeColor = Colors.tealAccent.shade400;
    return Container(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onTap: () {
          setState(() {
            _pageViewController.animateToPage(
              index,
              duration: const Duration(milliseconds: 800),
              curve: Curves.linearToEaseOut,
            );
          });
        },
        child: Column(
          children: [
            Icon(
              icon,
              color: _currentIndex == index ? activeColor : Colors.black26,
            ),
            Text(
              text,
              style: TextStyle(
                color: _currentIndex == index ? activeColor : Colors.black26,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}