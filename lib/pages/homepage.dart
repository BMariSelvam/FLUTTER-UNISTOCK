import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample_design/Getxcontrollers/stockdetail.dart';
import 'package:flutter_sample_design/pages/Bottomtab/homespage.dart';
import 'package:flutter_sample_design/pages/Bottomtab/productpage.dart';
import 'package:flutter_sample_design/pages/Bottomtab/stockpage.dart';
import 'package:flutter_sample_design/pages/Bottomtab/userdetail.dart';
import 'package:flutter_sample_design/shared/bottomnaviagtion.dart';
import 'package:get/get.dart';

import '../SearchPrdoucts/searchProductScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = "/home_screen";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late final List<Widget> tabs;
  var curTab = 0;
  //final DataController dataController= Get.find();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabs = [
      HomeDetailpage(
        onTabChanged: changeTab,
        name: '',
      ),
      StockPage(
        onTabChanged: changeTab,
        name: '',
      ),
      // const ProductPage(),
      ProductSearchScreen(
        onTabChanged: changeTab,
        name: '',
      ),
      const UserDetail(loged: true)
    ];
  }

  void changeTab(int index) {
    setState(() {
      curTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        bottomNavigationBar: BottomTab(
          tab: curTab,
          valueChanged: (val) {
            setState(() {
              curTab = val;
            });
          },
        ),
        body: tabs[curTab],
      ),
    );
  }
}
