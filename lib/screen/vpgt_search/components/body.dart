import 'package:demo_app/size_config.dart';
import 'package:flutter/material.dart';

import 'custom_input.dart';

class BodyVPGTSearch extends StatelessWidget {
  const BodyVPGTSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomInput(
              width: 150,
              textHint: "Từ ngày",
              iconData: Icons.calendar_month,
              press: () {},
            ),
            CustomInput(
              width: 150,
              textHint: "Đến ngày",
              iconData: Icons.calendar_month,
              press: () {},
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        CustomInput(
          width: getProportionateScreenWidth(330),
          textHint: "Trạng thái",
          iconData: Icons.keyboard_arrow_down,
          press: () {
            BottomDialog().showBottomDialog(context);
          },
        ),
      ],
    );
  }
}

class BottomDialog {
  void showBottomDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "showGeneralDialog",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.6),
      transitionDuration: const Duration(milliseconds: 400),
      context: context,
      pageBuilder: (context, _, __) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: _buildDialogContent(),
        );
      },
    );
  }

  Widget _buildDialogContent() {
    return IntrinsicHeight(
      child: Container(
        width: double.maxFinite,
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Material(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.close),
                  Spacer(),
                  Text("Trạng thái", textAlign: TextAlign.center,),
                  Spacer()
                ],
              ),
              const Divider(
                color: Colors.black26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Trạng thái", textAlign: TextAlign.center,),
                ],
              ),
              Divider(
                color: Colors.black26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Trạng thái", textAlign: TextAlign.center,),
                ],
              ),
              Divider(
                color: Colors.black26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Trạng thái", textAlign: TextAlign.center,),
                ],
              ),
              Divider(
                color: Colors.black26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Trạng thái", textAlign: TextAlign.center,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


