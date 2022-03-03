import 'package:demo_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../home/components/box_border_setting.dart';
import '../../home/components/item_list_setting.dart';
import 'header.dart';

class BodySetting extends StatelessWidget {
  const BodySetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderScreenSetting(),
        SizedBox(height: getProportionateScreenWidth(100)),
        BoxBorderSetting(
          child: [
            const ItemListSetting(
              action: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black12,
                size: 15,
              ),
              text: "Thông tin cá nhân",
              icon: Icons.person,
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
                  value: true,
                  onChanged: (bool value) {},
                  activeTrackColor: Colors.teal.shade200,
                  activeColor: Colors.white,
                ),
              ),
              text: "Cài đặt vân tay/ Face ID",
              icon: Icons.fingerprint_sharp,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const ItemListSetting(
              action: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black12,
                size: 15,
              ),
              text: "Đổi mật khẩu",
              icon: Icons.lock,
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(16)),
        const BoxBorderSetting(
          child: [
            ItemListSetting(
              action: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black12,
                size: 15,
              ),
              text: "Đăng xuất",
              icon: Icons.logout,
            ),
          ],
        ),
      ],
    );
  }
}
