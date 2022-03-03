import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({
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
              BoxShadow(color: Colors.black54, blurRadius: 10),
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
          top: getProportionateScreenWidth(60),
          child: Container(
            width: getProportionateScreenWidth(330),
            height: getProportionateScreenWidth(80),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(
                              getProportionateScreenWidth(25)),
                          child: Image.asset(
                            "assets/images/avatar.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Bui Ngoc Canh"),
                          SizedBox(height: 5),
                          Text("Số CCCD: 03520003371"),
                        ],
                      ),
                      Icon(
                        Icons.qr_code_scanner,
                        color: Colors.greenAccent,
                        size: getProportionateScreenWidth(32),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
