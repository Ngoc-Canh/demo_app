import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../parent_home/parent_home_screen.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.search_outlined,
                      size: getProportionateScreenWidth(200),
                    ),
                    Positioned(
                      top: getProportionateScreenWidth(50),
                      left: getProportionateScreenWidth(50),
                      child: Icon(
                        Icons.traffic_outlined,
                        size: getProportionateScreenWidth(60),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
            Text(
              "Đăng nhập tài khoản",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.w600,
                color: Colors.tealAccent.shade400,
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(330),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hoverColor: Colors.red,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenWidth(10),
                        horizontal: getProportionateScreenWidth(16),
                      ),
                      hintText: "Số CCCD",
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(330),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hoverColor: Colors.red,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenWidth(10),
                        horizontal: getProportionateScreenWidth(16),
                      ),
                      hintText: "Mật khẩu",
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(8)),
            Padding(
              padding:
              EdgeInsets.only(right: getProportionateScreenWidth(25)),
              child: const Align(
                alignment: Alignment.centerRight,
                child: Text("Quên mật khẩu?"),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(35)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25),
              ),
              child: Row(
                children: [
                  Container(
                    width: getProportionateScreenWidth(260),
                    padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenWidth(15),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(10),
                        ),
                        gradient: LinearGradient(colors: [
                          Colors.teal,
                          Colors.tealAccent.shade400,
                        ])),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          ParentHomeScreen.routerName,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Đăng nhập",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.only(
                        top: 0, left: 10, right: 0, bottom: 0),
                    child: Icon(
                      Icons.fingerprint,
                      color: Colors.tealAccent.shade400,
                      size: 45,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Text("Bạn chưa tài khoản? Đăng ký ngay"),
            SizedBox(height: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}
