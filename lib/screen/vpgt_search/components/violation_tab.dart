import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../components/item_violation.dart';
import '../../../size_config.dart';

class ViolationTab extends StatefulWidget {
  const ViolationTab({Key? key}) : super(key: key);

  @override
  _ViolationTabState createState() => _ViolationTabState();
}

class _ViolationTabState extends State<ViolationTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [_tabSection(context)],
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 0.5,
                offset: Offset(0, 2.1),
              ),
            ], color: Colors.white),
            child: const TabBar(
              labelColor: Colors.teal,
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.teal,
              tabs: [
                Tab(text: "Phạt nóng"),
                Tab(text: "Phạt nguội"),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.9,
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16),
                    ),
                    child: Column(
                      children: const [
                        ItemViolation(),
                        ItemViolation(),
                        ItemViolation(),
                        ItemViolation(),
                        ItemViolation(),
                        ItemViolation(),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16),
                    ),
                    child: Column(
                      children: const [
                        ItemViolation(),
                        ItemViolation(),
                        ItemViolation(),
                        ItemViolation(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
