import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ItemCitizenService extends StatelessWidget {
  const ItemCitizenService({Key? key, required this.errorName})
      : super(key: key);
  final String errorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: getProportionateScreenWidth(16),
        top: getProportionateScreenWidth(16),
        right: getProportionateScreenWidth(16),
      ),
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(16)),
      decoration: BoxDecoration(
        color: Colors.black12.withOpacity(0.05),
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(
              Icons.grid_view_rounded,
              color: Colors.black,
              size: getProportionateScreenWidth(20),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(230),
            child: Text(errorName,
                textAlign: TextAlign.start),
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16),
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              size: getProportionateScreenWidth(16),
            ),
          )
        ],
      ),
    );
  }
}
