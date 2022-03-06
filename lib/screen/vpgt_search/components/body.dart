import 'package:demo_app/components/form_search.dart';
import 'package:demo_app/screen/vpgt_search/components/violation_tab.dart';
import 'package:flutter/material.dart';

class BodyVPGTSearch extends StatelessWidget {
  const BodyVPGTSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FormSearch(),
        Expanded(
          flex: 2,
          child: ViolationTab(),
        ),
      ],
    );
  }
}
