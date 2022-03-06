import 'package:flutter/material.dart';

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

  void dismissBottomDialog(BuildContext context){
    {Navigator.of(context, rootNavigator: true).pop();}
  }
}