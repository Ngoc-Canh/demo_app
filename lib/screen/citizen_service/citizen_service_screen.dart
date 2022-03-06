import 'package:demo_app/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/item_citizen_service.dart';

class CitizenServiceScreen extends StatelessWidget {
  static String routerName = "/citizenService";

  const CitizenServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Dịch vụ công"),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            ItemCitizenService(errorName: "Đổi Giấy phép lái xe do ngành GTVT cấp"),
            ItemCitizenService(errorName: "Đăng ký, cấp biển số xe (thực hiện tại cấp tỉnh)"),
            ItemCitizenService(errorName: "Cấp Giấy phép lái xe quốc tế")
          ],
        ),
      ),
    );
  }
}
