import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/grid_view_button.dart';
import 'components/header.dart';
import 'components/item_rules.dart';

class HomeScreen extends StatelessWidget {
  static String routerName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            const HeaderScreen(),
            SizedBox(
              height: getProportionateScreenWidth(55),
            ),
            const GridViewButton(),
            SizedBox(
              height: getProportionateScreenWidth(16),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Phổ biến pháp luật",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Xem thêm",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ItemRules(
                    image: "assets/images/vi_pham_giao_thong_1.jpg",
                    description:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  ),
                  ItemRules(
                    image: "assets/images/vi_pham_giao_thong_1.jpg",
                    description:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(16),
            ),
          ],
        ),
      ),
    );
  }
}
