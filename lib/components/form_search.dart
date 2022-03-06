import 'package:flutter/material.dart';

import 'input_date_picker.dart';
import 'input_status.dart';
import '../size_config.dart';

class FormSearch extends StatelessWidget {
  const FormSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        bottom: getProportionateScreenWidth(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(280),
                child: TextFormField(
                  decoration: InputDecoration(
                    hoverColor: Colors.red,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenWidth(10),
                      horizontal: getProportionateScreenWidth(16),
                    ),
                    hintText: "Nhập biển số",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: getProportionateScreenWidth(50),
                width: getProportionateScreenWidth(50),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    color: Colors.teal.shade200),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputDatePicker(
                width: getProportionateScreenWidth(155),
                textHint: "Từ ngày",
                iconData: Icons.calendar_month,
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
              InputDatePicker(
                width: getProportionateScreenWidth(155),
                textHint: "Đến ngày",
                iconData: Icons.calendar_month,
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          InputStatus(
            width: getProportionateScreenWidth(330),
            textHint: "Trạng thái",
            iconData: Icons.keyboard_arrow_down,
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
        ],
      ),
    );
  }
}
