import 'package:demo_app/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailViolationScreen extends StatelessWidget {
  static String routerName = "/detailViolation";
  const DetailViolationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Chi tiết vi phạm giao thông",
      ),
      body: BodyDetailViolation(),
    );
  }
}
