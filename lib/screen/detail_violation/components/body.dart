import 'package:demo_app/screen/detail_violation/components/video_view.dart';
import 'package:demo_app/size_config.dart';

import 'package:flutter/material.dart';

import 'collapse_expand_view.dart';
import 'detail_payment.dart';
import 'image_list.dart';

class BodyDetailViolation extends StatelessWidget {
  const BodyDetailViolation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(
              getProportionateScreenWidth(10),
            ),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(16),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(10),
                ),
                color: Colors.white),
            child: const CollapseExpandComponent(),
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
            child: Row(
              children: const [
                Text(
                  "Hình ảnh vi phạm",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const ImageList(),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
            child: Row(
              children: const [
                Text(
                  "Video",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const VideoView(),
          const SizedBox(height: 10),
          const DetailPayment(),
          Container(
            padding: EdgeInsets.all(
              getProportionateScreenWidth(16),
            ),
            margin: EdgeInsets.all(
              getProportionateScreenWidth(10),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Biên bản/Quyết định xử phạt"),
                    Container(
                      padding: EdgeInsets.all(
                        getProportionateScreenWidth(5),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(color: Colors.tealAccent.shade200),
                      ),
                      child: Text(
                        "Chi tiết biên bản",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(10),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
