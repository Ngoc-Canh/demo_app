import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class BodyDatePickerDialog extends StatelessWidget {
  const BodyDatePickerDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenWidth(200),
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime.now(),
            onDateTimeChanged: (DateTime newDateTime) {
              // Do something
            },
          ),
        ),
        ButtonDefault(text: "Xong", press: (){}),
      ],
    );
  }
}