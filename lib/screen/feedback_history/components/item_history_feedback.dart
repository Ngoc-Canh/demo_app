import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ItemFeedbackHistory extends StatelessWidget {
  const ItemFeedbackHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(10),
        horizontal: getProportionateScreenWidth(16),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 2)],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(12),
              vertical: getProportionateScreenWidth(8),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  getProportionateScreenWidth(10),
                ),
                topRight: Radius.circular(
                  getProportionateScreenWidth(10),
                ),
              ),
              color: Colors.pink.shade50,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.redAccent,
                  size: getProportionateScreenWidth(18),
                ),
                SizedBox(width: getProportionateScreenWidth(5)),
                Text(
                  "Vượt đèn đỏ, Không đội mũ bảo hiểm",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenWidth(12),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                  getProportionateScreenWidth(10),
                ),
                bottomLeft: Radius.circular(
                  getProportionateScreenWidth(10),
                ),
              ),
              color: Colors.white,
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "Biển kiểm soát\n",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "29F1-1234",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Chủ phương tiện",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(13),
                          ),
                        ),
                        Text(
                          "Địa điểm",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(13),
                          ),
                        ),
                        Text(
                          "Ngày vi phạm",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(13),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          ": Nguyen Van A",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(13),
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ": Ngã tư khuất duy tiến ",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(13),
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ": 20/12/2021",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(13),
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
