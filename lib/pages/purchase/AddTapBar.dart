import 'package:flutter/material.dart';
import 'package:flutter_sample_design/pages/purchase/SupplierScreen.dart';
import 'package:flutter_sample_design/pages/purchase/ProductScreen.dart';
import 'package:flutter_sample_design/pages/purchase/Summary.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddTabBarScreen extends StatefulWidget {
  const AddTabBarScreen({super.key});

  @override
  _AddTabBarScreenState createState() => _AddTabBarScreenState();
}

class _AddTabBarScreenState extends State<AddTabBarScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff159594),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              setState(() {
                Get.back();
              });
            },
          ),
          title: const Text('Invoice'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Supplier'),
              Tab(text: 'Product'),
              Tab(text: 'Summary'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CustomerScreen(),
            ProductScreen(),
            SummaryScreen(),
          ],
        ),
      ),
    );
  }
}
