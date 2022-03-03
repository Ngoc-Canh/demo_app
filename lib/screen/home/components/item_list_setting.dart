import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ItemListSetting extends StatelessWidget {
  const ItemListSetting({
    Key? key,
    required this.text,
    required this.icon,
    required this.action,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(5),
          horizontal: getProportionateScreenWidth(10)),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: getProportionateScreenWidth(20)),
          Text(text),
          const Spacer(),
          action,
        ],
      ),
    );
  }
}