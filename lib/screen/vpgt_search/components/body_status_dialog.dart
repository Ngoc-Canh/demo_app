import 'package:flutter/material.dart';

class BodyStatusDialog extends StatelessWidget {
  const BodyStatusDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.black26,
        ),
        _itemStatus("Chờ ký biên bản"),
        _itemStatus("Chờ ra biên bản"),
        _itemStatus("Chờ nộp phạt"),
        _itemStatus("Hoàn thành nộp phạt"),
        _itemStatus("Kết thúc")
      ],
    );
  }

  Padding _itemStatus(String text) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const Divider(
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}