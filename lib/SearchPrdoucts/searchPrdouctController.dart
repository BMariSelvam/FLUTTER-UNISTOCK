
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import '../apiservices/apiservice.dart';
import '../model/stockmodel.dart';
import 'ProductDeteilsScreen.dart';

class SearchProductController extends GetxController with StateMixin {
  RxList<StockDetails> productList = <StockDetails>[].obs;
  RxList<StockDetails> displayList = <StockDetails>[].obs;
  List<StockDetails> prefixList = [];
  Rx<bool> isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    change(null, status: RxStatus.loading());
    getProduct();
  }

  getProduct() {
    isLoading.value = true;
    change(null, status: RxStatus.loading());
    getallNews().then((value) {
      isLoading.value = false;
      productList.value = List<Map<String, dynamic>>.from(value["Data"])
          .map((e) => StockDetails.fromJson(e))
          .toList();
      prefixList = List<Map<String, dynamic>>.from(value["Data"])
          .map((e) => StockDetails.fromJson(e))
          .toList();
      if (productList.value != null) {
        displayList.value = productList.value;
        print("123345      ${displayList.value}");
      } else {
        Get.snackbar("Sorry", "Sorry stock not found",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red.withOpacity(0.1),
            colorText: Colors.red);
      }
      change(null, status: RxStatus.success());
    }).catchError((e) {
      change(null, status: RxStatus.error());
      Get.snackbar("Sorry", "$e",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.1),
          colorText: Colors.red);
    });
  }

}
