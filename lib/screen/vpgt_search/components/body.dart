import 'package:demo_app/screen/vpgt_search/components/violation_tab.dart';
import 'package:demo_app/size_config.dart';
import 'package:flutter/material.dart';

import 'body_date_picker_dialog.dart';
import 'body_status_dialog.dart';
import 'body_dialog.dart';
import 'custom_input.dart';

class BodyVPGTSearch extends StatelessWidget {
  const BodyVPGTSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
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
                  CustomInput(
                    width: getProportionateScreenWidth(155),
                    textHint: "Từ ngày",
                    iconData: Icons.calendar_month,
                    press: () {
                      BottomDialog().showBottomDialog(
                        context,
                        const BodyDialog(
                          title: "Chọn ngày",
                          child: BodyDatePickerDialog(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                  CustomInput(
                    width: getProportionateScreenWidth(155),
                    textHint: "Đến ngày",
                    iconData: Icons.calendar_month,
                    press: () {
                      BottomDialog().showBottomDialog(
                        context,
                        const BodyDialog(
                          title: "Chọn ngày",
                          child: BodyDatePickerDialog(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              CustomInput(
                width: getProportionateScreenWidth(330),
                textHint: "Trạng thái",
                iconData: Icons.keyboard_arrow_down,
                press: () {
                  BottomDialog().showBottomDialog(
                    context,
                    const BodyDialog(
                      title: "Trạng thái",
                      child: BodyStatusDialog(),
                    ),
                  );
                },
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
            ],
          ),
        ),
        const ViolationTab()
      ],
    );
  }
}

class BottomDialog {
  void showBottomDialog(BuildContext context, Widget child) {
    showGeneralDialog(
      barrierLabel: "showGeneralDialog",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.6),
      transitionDuration: const Duration(milliseconds: 400),
      context: context,
      pageBuilder: (context, _, __) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: child,
        );
      },
    );
  }
}


