import 'package:demo_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../home/components/box_border_setting.dart';
import '../../home/components/item_list_setting.dart';
import 'header.dart';

class BodySetting extends StatefulWidget {
  const BodySetting({Key? key}) : super(key: key);

  @override
  State<BodySetting> createState() => _BodySettingState();
}

class _BodySettingState extends State<BodySetting> {
  bool valueSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderScreenSetting(),
        SizedBox(height: getProportionateScreenWidth(100)),
        BoxBorderSetting(
          child: [
            ItemListSetting(
              action: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black12,
                size: 15,
              ),
              text: "Thông tin cá nhân",
              icon: Icons.person,
              press: () {},
            ),
            const Divider(
              color: Colors.grey,
            ),
            ItemListSetting(
              action: Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenWidth(20),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: Switch(
                  value: valueSwitch,
                  onChanged: (bool value) {
                    setState(() {
                      valueSwitch = !valueSwitch;
                    });
                  },
                  activeTrackColor: Colors.tealAccent.shade400,
                  activeColor: Colors.white,
                ),
              ),
              text: "Cài đặt vân tay/ Face ID",
              icon: Icons.fingerprint_sharp,
              press: () {
                setState(() {
                  valueSwitch = !valueSwitch;
                });
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ItemListSetting(
              action: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black12,
                size: 15,
              ),
              text: "Đổi mật khẩu",
              icon: Icons.lock,
              press: () {},
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(16)),
        BoxBorderSetting(
          child: [
            ItemListSetting(
              action: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black12,
                size: 15,
              ),
              text: "Đăng xuất",
              icon: Icons.logout,
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}
