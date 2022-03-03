import 'package:demo_app/size_config.dart';
import 'package:flutter/material.dart';

import 'item_notification.dart';

class BodyNotification extends StatelessWidget {
  const BodyNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        ItemNotification(
          errorName: "Lỗi VPGT - Xử lý nóng",
          quantity: 5,
        ),
        ItemNotification(
          errorName: "Lỗi VPGT - Xử lý nguội",
          quantity: 3,
        ),
        ItemNotification(
          errorName: "Khiếu nại",
          quantity: 3,
        ),
        ItemNotification(
          errorName: "Nộp phạt Online",
          quantity: 10,
        ),
        ItemNotification(
          errorName: "Khác",
          quantity: 0,
        ),
      ],
    );
  }
}

