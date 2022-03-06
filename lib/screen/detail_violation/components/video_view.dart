import 'package:flutter/material.dart';

import '../../../size_config.dart';

class VideoView extends StatelessWidget {
  const VideoView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(340),
      height: getProportionateScreenWidth(256),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(10),
        ),
        color: Colors.black26,
      ),
      child: const Center(
        child: Icon(
          Icons.play_circle_fill,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
