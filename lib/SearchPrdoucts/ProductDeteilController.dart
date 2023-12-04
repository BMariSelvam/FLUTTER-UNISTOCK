
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../apiservices/apiservice.dart';
import '../pages/stockupdatesuccess.dart';

class ProdectdetailController extends GetxController with StateMixin {
  bool isLoading = false;

  updatePrdouct( inventeycode,qtyhand, stpck, sellingprice) {
    isLoading = true;
    var req = {
      "InventoryCode": inventeycode.toString(),
      "QtyOnHand": qtyhand,
      "Stock": int.parse(stpck),
      "SellingPrice":
      double.parse(sellingprice)
    };
    updateStockDetail(req).then((value) {
      isLoading = false;
      Get.snackbar(
          "Success", "Stock Updated Succesfully",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor:
          Colors.green.withOpacity(0.1),
          colorText: Colors.green);
      Get.to(StockUpdateSucess());
    }).catchError((error, stackTrace) {
      Get.snackbar("Error", "$error",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor:
          Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
    });
  }

}