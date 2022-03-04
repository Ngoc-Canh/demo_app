import 'package:demo_app/size_config.dart';
import 'package:flutter/material.dart';

class BodyDialog extends StatelessWidget {
  const BodyDialog({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
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
                children: [
                  SizedBox(
                    child: InkWell(
                      onTap: () =>
                          {Navigator.of(context, rootNavigator: true).pop()},
                      child: const Icon(Icons.close),
                    ),
                  ),
                  Expanded(
                      child: Center(
                          child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: getProportionateScreenWidth(16)),
                  ))),
                ],
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
