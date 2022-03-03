import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
    required this.textHint,
    required this.width,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final double width;
  final String textHint;
  final IconData iconData;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        readOnly: true,
        onTap: press,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(10),
            horizontal: getProportionateScreenWidth(16),
          ),
          hintText: textHint,
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
          suffixIcon: GestureDetector(
            onTap: press,
            child: Icon(
              iconData,
              color: Colors.black38,
            ),
          ),
        ),
      ),
    );
  }
}
