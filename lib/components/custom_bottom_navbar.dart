import 'package:demo_app/screen/setting/setting_screen.dart';
import 'package:flutter/material.dart';

import '../enum.dart';
import '../screen/home/home_screen.dart';
import '../screen/notification/notification_screen.dart';
import '../size_config.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.state,
  }) : super(key: key);

  final MenuState state;

  @override
  Widget build(BuildContext context) {
    const Color inActiveColor = Colors.tealAccent;
    return Stack(
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
                  color: const Color(0xFFDADADA).withOpacity(0.15)),
            ],
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routerName);
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: MenuState.home == state
                            ? inActiveColor
                            : Colors.black26,
                      ),
                      Text(
                        "Trang chủ",
                        style: TextStyle(
                          color: MenuState.home == state
                              ? inActiveColor
                              : Colors.black26,
                          fontWeight: MenuState.home == state
                              ? FontWeight.w500
                              : FontWeight.normal,
                          fontSize: MenuState.home == state ? 14 : 12,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, NotificationScreen.routerName),
                  child: Column(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: MenuState.notification == state
                            ? inActiveColor
                            : Colors.black26,
                      ),
                      Text(
                        "Thông báo",
                        style: TextStyle(
                          color: MenuState.notification == state
                              ? inActiveColor
                              : Colors.black26,
                          fontWeight: MenuState.notification == state
                              ? FontWeight.w500
                              : FontWeight.normal,
                          fontSize: MenuState.notification == state ? 14 : 12,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SettingScreen.routerName);
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: MenuState.profile == state
                            ? inActiveColor
                            : Colors.black26,
                      ),
                      Text(
                        "Tài khoản",
                        style: TextStyle(
                          color: MenuState.profile == state
                              ? inActiveColor
                              : Colors.black26,
                          fontWeight: MenuState.profile == state
                              ? FontWeight.w500
                              : FontWeight.normal,
                          fontSize: MenuState.profile == state ? 14 : 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
