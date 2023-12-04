import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UrlController extends GetxController {
  final _getUrlController = TextEditingController();

  RxString _updateUrlController = ''.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _getUrlController.addListener(() {
      _updateUrlController.value = _getUrlController.text;
    });
  }
}
