import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../apiservices/UrlUpdateFile.dart';
import '../apiservices/apiservice.dart';
import 'homepage.dart';


class LoginController extends GetxController with StateMixin {

  final TextEditingController userName = TextEditingController();
  final TextEditingController passWord = TextEditingController();
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _reloadConfiguration();
  }

  void _reloadConfiguration() async {
    await AppConfig.init();
  }

  loginfunc() {
    isLoading.value = true;
    var loginreq = {
      "Username":userName.text.trim(),
      "Password":passWord.text.trim(),
    };
    Loginapi(loginreq).then((value) {
      isLoading.value = false;
      if(value["Status"] == true) {
        Get.snackbar(
            "Success", "Login Succesfully",
            // snackPosition: SnackPosition.BOTTOM,
            // backgroundColor:
            // Colors.green.withOpacity(0.1),
            colorText: Colors.green);
        Get.offAndToNamed(HomePage.routeName);
      } else {
        isLoading.value = false;
        Get.snackbar(
            "Failure", "Invalid Data",
            snackPosition: SnackPosition.BOTTOM,
            // backgroundColor:
            // Colors.green.withOpacity(0.1),
            colorText: Colors.green);
      }
    }).catchError((error, stackTrace) {
      Get.snackbar("Error", "$error",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor:
          Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
    });
  }
}