import 'package:demo_app/screen/vpgt_search/VPGTScreen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../list_item.dart';
import 'item_button.dart';

class GridViewButton extends StatelessWidget {
  const GridViewButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 1.05,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(3),
        horizontal: getProportionateScreenWidth(20),
      ),
      crossAxisSpacing: getProportionateScreenWidth(16),
      mainAxisSpacing: getProportionateScreenWidth(16),
      children: [
        ...List.generate(
          listItem.length,
              (index) => ButtonHome(
            gradientStart: listItem[index].gradientStart,
            gradientEnd: listItem[index].gradientEnd,
            iconColor: listItem[index].iconColor,
            icon: listItem[index].icon,
            text: listItem[index].title,
            press: index == 0 ? () => Navigator.pushNamed(context, VPGTScreen.routerName) : (){},
          ),
        )
      ],
    );
  }
}