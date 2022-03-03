import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';
import 'components/body.dart';

class VPGTScreen extends StatelessWidget {
  static String routerName = "/vpgtSearch";

  const VPGTScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Tra cứu VPGT"),
      body: BodyVPGTSearch(),
    );
  }
}


