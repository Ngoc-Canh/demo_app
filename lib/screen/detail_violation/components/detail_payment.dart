import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DetailPayment extends StatelessWidget {
  const DetailPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        getProportionateScreenWidth(16),
      ),
      margin: EdgeInsets.all(
        getProportionateScreenWidth(10),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Tổng mức phạt"),
          Container(
            padding: EdgeInsets.all(
              getProportionateScreenWidth(5),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(2),
                ),
                border: Border.all(color: Colors.tealAccent.shade200)),
            child: Text(
              "Chi tiết mức phạt",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(10),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
