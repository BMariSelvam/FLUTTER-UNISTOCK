import 'package:flutter/material.dart';
import 'package:flutter_sample_design/apiservices/apiservice.dart';
import 'package:flutter_sample_design/model/stockmodel.dart';
import 'package:flutter_sample_design/pages/stockupdatepage.dart';
import 'package:get/get.dart';

import 'dart:developer' as log;

class DataController extends GetxController {
  List<StockDetails> products = [];

  RxString type = "".obs;

  var isDataLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  getProduct(type) {
    getsubNews(type).then((value) {
      products = List<Map<String, dynamic>>.from(value["Data"])
          .map((e) => StockDetails.fromJson(e))
          .toList();
      print("Here comess${products[0].inventoryCode}");

      if (products[0].inventoryCode != null) {
        isDataLoading(true);
        Get.snackbar("Success", "Get Product Succesfully",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green);
        Get.to(StockUpdateDetais());
      } else {
        Get.snackbar("Sorry", "Sorry stock not found",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red.withOpacity(0.1),
            colorText: Colors.red);
      }

      print("Here comess:$isDataLoading");
    }).catchError((e) {
      Get.snackbar("Sorry", "$e",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.1),
          colorText: Colors.red);
    });
  }

  getProductbyname(type) {
    getProductByname(type).then((value) {
      products = List<Map<String, dynamic>>.from(value["Data"])
          .map((e) => StockDetails.fromJson(e))
          .toList();
      print("Here comess${products[0].inventoryCode}");

      if (products[0].inventoryCode != null) {
        isDataLoading(true);
        Get.snackbar("Success", "Get Product Succesfully",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green);
        Get.to(StockUpdateDetais());
      } else {
        Get.snackbar("Sorry", "Sorry stock not found",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red.withOpacity(0.1),
            colorText: Colors.red);
      }

      print("Here comess:$isDataLoading");
    }).catchError((e) {
      getProduct(type);
      // Get.snackbar("Sorry", "$e",
      //     snackPosition: SnackPosition.BOTTOM,
      //     backgroundColor: Colors.red.withOpacity(0.1),
      //     colorText: Colors.red);
    });
  }


}
