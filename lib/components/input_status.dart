import 'package:flutter/material.dart';

import '../dialog_bottom.dart';
import '../size_config.dart';
import 'body_dialog.dart';

class InputStatus extends StatefulWidget {
  const InputStatus({
    Key? key,
    required this.textHint,
    required this.width,
    required this.iconData,
  }) : super(key: key);

  final double width;
  final String textHint;
  final IconData iconData;

  @override
  State<InputStatus> createState() => _InputStatusState();
}

class _InputStatusState extends State<InputStatus> {
  String initValue = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextFormField(
        readOnly: true,
        onTap: () {
          BottomDialog().showBottomDialog(
            context,
            BodyDialog(child: _bodyDialogStatus(), title: widget.textHint),
          );
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(10),
            horizontal: getProportionateScreenWidth(16),
          ),
          hintText: initValue != "" ? initValue : widget.textHint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(10),
            ),
            borderSide: const BorderSide(color: Colors.black38),
          ),
          focusColor: Colors.black38,
          suffixIcon: Icon(
            widget.iconData,
            color: Colors.black38,
          ),
        ),
      ),
    );
  }

  Column _bodyDialogStatus() {
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

  Widget _itemStatus(String text) {
    return InkWell(
      onTap: () {
        setState(() {
          initValue = text;
        });
        BottomDialog().dismissBottomDialog(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  text,
                ),
              ],
            ),
            const Divider(
              color: Colors.black26,
            ),
          ],
        ),
      ),
    );
  }
}
