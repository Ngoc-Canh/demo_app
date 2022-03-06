import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CollapseExpandComponent extends StatefulWidget {
  const CollapseExpandComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<CollapseExpandComponent> createState() =>
      _CollapseExpandComponentState();
}

class _CollapseExpandComponentState extends State<CollapseExpandComponent> {
  bool _hidden = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _hidden = !_hidden;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Thông tin vi phạm",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                _hidden == true
                    ? Icons.arrow_drop_up_sharp
                    : Icons.arrow_drop_down_sharp,
                size: getProportionateScreenWidth(24),
              )
            ],
          ),
        ),
        Visibility(
          visible: _hidden,
          child: Column(
            children: [
              const Divider(
                color: Colors.black26,
              ),
              buildItemRow("Tình trạng", "Chờ nộp phạt"),
              buildItemRow("Số quyết định", "QD/GT-098687/HN"),
              buildItemRow("Biển số", "29E1 - 12345"),
              buildItemRow("Người vi phạm", "Nguyễn Văn A"),
              buildItemRow("CCCD/CMND", "123456789024"),
              buildItemRow("Địa chỉ",
                  "Số nhà 256, Phường Thanh Xuân Bắc,  Quận Thanh Xuân, Hà Nội"),
              buildItemRow("Thời gian vi phạm", "20/12/2021  08:15"),
              buildItemRow("Lỗi vi phạm", "Vượt đèn đỏ, Không đội mũ bảo hiểm"),
              buildItemRow("Địa điểm vi phạm", "Chờ nộp phạt"),
            ],
          ),
        ),
      ],
    );
  }

  Container buildItemRow(title, value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(150),
            child: Text(title),
          ),
          const Text(": "),
          Expanded(
            flex: 2,
            child: Text("$value"),
          ),
        ],
      ),
    );
  }
}