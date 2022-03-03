import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HeaderScreenSetting extends StatelessWidget {
  const HeaderScreenSetting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(getProportionateScreenWidth(20)),
              bottomRight: Radius.circular(getProportionateScreenWidth(20)),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(getProportionateScreenWidth(20)),
              bottomRight: Radius.circular(getProportionateScreenWidth(20)),
            ),
            child: Image.asset(
              "assets/images/Top background.png",
              fit: BoxFit.cover,
              height: getProportionateScreenWidth(100),
              width: double.infinity,
            ),
          ),
        ),
        Positioned(
          top: getProportionateScreenWidth(65),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: [
                    ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(
                          getProportionateScreenWidth(35),
                        ),
                        child: Image.asset(
                          "assets/images/avatar.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black38,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                const Text(
                  "Bui Ngoc Canh",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Số CCCD: 0352003371",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
