import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../apiservices/apiservice.dart';
import '../model/CompanyModel.dart';


class HomeController extends GetxController with StateMixin {
  RxList<CompanyModel> comapnydetails = <CompanyModel>[].obs;
  bool isLoading = false;


  @override
  void onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
    companyfunc();
  }

  companyfunc() async {
    change(null, status: RxStatus.loading());
    companylist().then((value) {
      if (value["Data"] != null) {
        comapnydetails.value = List<Map<String, dynamic>>.from(value["Data"])
            .map((e) => CompanyModel.fromJson(e))
            .toList();
      }else {
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