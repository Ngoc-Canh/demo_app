import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ItemListSetting extends StatelessWidget {
  const ItemListSetting({
    Key? key,
    required this.text,
    required this.icon,
    required this.action,
    required this.press,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Widget action;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(5),
          horizontal: getProportionateScreenWidth(10),
        ),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: getProportionateScreenWidth(20)),
            Text(text),
            const Spacer(),
            action,
          ],
        ),
      ),
    );
  }
}
