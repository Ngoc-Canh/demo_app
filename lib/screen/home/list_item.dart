import 'package:flutter/material.dart';

class ItemButton
{
  final String title;
  final Color gradientStart;
  final Color gradientEnd;
  final Color iconColor;
  final IconData icon;

  ItemButton(this.title, this.gradientStart, this.gradientEnd, this.iconColor,
      this.icon);
}

List<ItemButton> listItem = [
  ItemButton("Tra Cứu VPGT", Colors.red.shade200, Colors.redAccent, Colors.red, Icons.image_search),
  ItemButton("Dịch vụ công", Colors.green.shade200, Colors.greenAccent, Colors.greenAccent, Icons.workspaces_outline),
  ItemButton("Lịch sử khiếu nại", Colors.blue.shade200, Colors.blueAccent, Colors.blue, Icons.feed),
  ItemButton("Lịch sử vi phạm", Colors.deepPurpleAccent.shade100, Colors.deepPurpleAccent, Colors.deepPurpleAccent.shade200, Icons.history),
];
