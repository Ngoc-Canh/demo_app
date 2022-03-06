import 'package:demo_app/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class FeedbackHistoryScreen extends StatelessWidget {
  static String routerName = "/feedbackHistory";

  const FeedbackHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Lịch sử khiếu nại",
      ),
      body: BodyFeedbackHistory(),
    );
  }
}

