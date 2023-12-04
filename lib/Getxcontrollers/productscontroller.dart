import 'package:flutter/material.dart';
import 'package:flutter_sample_design/apiservices/apiservice.dart';
import 'package:flutter_sample_design/model/stockmodel.dart';
import 'package:flutter_sample_design/pages/stockupdatepage.dart';
import 'package:get/get.dart';

import 'dart:developer' as log;

class ProductController extends GetxController {
  List<StockDetails> products = [];

  RxString type = "".obs;

  var isDataLoading = false.obs;

  @override
  void onInit() {
    getProduct();
    super.onInit();
  }

  getProduct() {
    getProductDetails().then((value) {
      print("Here comess:$value");
      if (value["Data"] != null) {
        print("Here comess:$isDataLoading");
        products = List<Map<String, dynamic>>.from(value["Data"])
            .map((e) => StockDetails.fromJson(e))
            .toList();
        print("Here comess${products.length}");
        isDataLoading(true);
        Get.snackbar("Success", "Get Product Succesfully",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green);
      } else {
        print("else working");
        products.length=0;
        isDataLoading(true);
        Get.snackbar("Success", "Get Product Succesfully",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green);
      }
    });
  }
}
