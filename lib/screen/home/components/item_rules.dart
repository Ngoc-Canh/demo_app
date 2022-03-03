import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ItemRules extends StatelessWidget {
  const ItemRules({
    Key? key,
    required this.image,
    required this.description,
  }) : super(key: key);
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
      child: SizedBox(
        width: getProportionateScreenWidth(163),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(12),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
