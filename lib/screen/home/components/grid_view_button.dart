import 'package:demo_app/screen/citizen_service/citizen_service_screen.dart';
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
      physics: const ClampingScrollPhysics(),
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
            press: () {
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, VPGTScreen.routerName);
                  break;
                case 1:
                  Navigator.pushNamed(context, CitizenServiceScreen.routerName);
                  break;
                case 2:
                  () {};
                  break;
                case 3:
                  () {};
                  break;
                default:
                  () {};
              }
            },
          ),
        )
      ],
    );
  }
}
