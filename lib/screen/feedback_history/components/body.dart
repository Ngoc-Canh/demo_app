import 'package:flutter/material.dart';

import '../../../components/form_search.dart';
import 'item_history_feedback.dart';

class BodyFeedbackHistory extends StatelessWidget {
  const BodyFeedbackHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const FormSearch(),
        Expanded(
          flex: 2,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return const ItemFeedbackHistory();
            },
          ),
        )
      ],
    );
  }
}
