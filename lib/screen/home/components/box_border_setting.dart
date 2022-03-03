import 'package:flutter/material.dart';

import '../../../size_config.dart';

class BoxBorderSetting extends StatelessWidget {
  const BoxBorderSetting({
    Key? key,
    required this.child,
  }) : super(key: key);
  final List<Widget> child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(16)),
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(10),
        ),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2)
        ]
      ),
      child: Column(
        children: child,
      ),
    );
  }
}