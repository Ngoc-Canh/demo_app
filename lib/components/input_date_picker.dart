import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dialog_bottom.dart';
import '../size_config.dart';
import 'body_dialog.dart';
import 'default_button.dart';

class InputDatePicker extends StatefulWidget {
  const InputDatePicker(
      {Key? key,
        required this.textHint,
        required this.width,
        required this.iconData})
      : super(key: key);

  final double width;
  final String textHint;
  final IconData iconData;

  @override
  State<InputDatePicker> createState() => _InputDatePickerState();
}

class _InputDatePickerState extends State<InputDatePicker> {
  String initValue = "";
  String initCalendar = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextFormField(
        readOnly: true,
        onTap: () {
          BottomDialog().showBottomDialog(
            context,
            BodyDialog(child: _dialogBodyDatePicker(), title: "Chọn ngày"),
          );
        },
        style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: getProportionateScreenWidth(16),
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
          suffixIcon: Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: GestureDetector(
              child: Icon(
                widget.iconData,
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column _dialogBodyDatePicker() {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenWidth(200),
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime.now(),
            onDateTimeChanged: (DateTime newDateTime) {
              setState(() {
                initCalendar =
                "${newDateTime.day}/${newDateTime.month}/${newDateTime.year}";
              });
            },
          ),
        ),
        ButtonDefault(
          text: "Xong",
          press: () {
            setState(
                  () {
                initValue = initCalendar;
                BottomDialog().dismissBottomDialog(context);
              },
            );
          },
        ),
      ],
    );
  }
}