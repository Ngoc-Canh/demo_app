import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({
    Key? key,
    required this.gradientStart,
    required this.gradientEnd,
    required this.iconColor,
    required this.icon,
    required this.text,
    required this.press
  }) : super(key: key);

  final Color gradientStart;
  final Color gradientEnd;
  final Color iconColor;
  final IconData icon;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(10),
        ),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [gradientStart, gradientEnd],
        ),
        boxShadow: const [
          BoxShadow(color: Colors.black54, blurRadius: 2)
        ]
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        highlightColor: gradientStart,
        onPressed: press,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: -35,
              left: -30,
              child: Container(
                width: 70,
                height: 75,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.07)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: getProportionateScreenWidth(60),
                  height: getProportionateScreenWidth(60),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      icon,
                      color: iconColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            Positioned(
              bottom: -35,
              right: -30,
              child: Container(
                width: 70,
                height: 75,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.07)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}