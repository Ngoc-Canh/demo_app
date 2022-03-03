import 'package:flutter/material.dart';

import '../../../size_config.dart';

class NotificationAppBar extends StatelessWidget implements PreferredSizeWidget{
  const NotificationAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.zero,
          child: Center(
            child: Text(
              "Thông báo",
              style: TextStyle(color: Colors.teal, fontSize: getProportionateScreenWidth(20), fontWeight: FontWeight.bold)
            ),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}