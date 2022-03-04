import 'package:flutter/material.dart';

import '../size_config.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding:
        EdgeInsets.symmetric(vertical: getProportionateScreenWidth(12)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(10),
            ),
            gradient: LinearGradient(colors: [
              HexColor.fromHex('#1DB0B3'),
              HexColor.fromHex('#59C9B0'),
            ])),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}