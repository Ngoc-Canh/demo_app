import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ItemNotification extends StatelessWidget {
  const ItemNotification({
    Key? key,
    required this.errorName,
    required this.quantity,
  }) : super(key: key);
  final String errorName;
  final int quantity;

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
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(10),
        ),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10)
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.tealAccent.withOpacity(0.2),
            ),
            child: Icon(
              Icons.grid_view_rounded,
              color: Colors.tealAccent,
              size: getProportionateScreenWidth(20),
            ),
          ),
          Text(errorName, textAlign: TextAlign.center,),
          const Spacer(),
          if (quantity > 0)
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Text(
                quantity.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(10),
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
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
