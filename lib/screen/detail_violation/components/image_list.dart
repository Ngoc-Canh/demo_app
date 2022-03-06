import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ImageList extends StatelessWidget {
  const ImageList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            width: getProportionateScreenWidth(300),
            height: getProportionateScreenWidth(200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
              color: Colors.black26,
            ),
          ),
          Container(
            width: getProportionateScreenWidth(300),
            height: getProportionateScreenWidth(200),
            margin: EdgeInsets.only(
              right: getProportionateScreenWidth(10),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
              color: Colors.black26,
            ),
          ),
          Container(
            width: getProportionateScreenWidth(300),
            height: getProportionateScreenWidth(200),
            margin: EdgeInsets.only(
              right: getProportionateScreenWidth(10),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
              color: Colors.black26,
            ),
          ),
        ],
      ),
    );
  }
}
