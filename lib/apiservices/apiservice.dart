import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_sample_design/core/networkutils.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'UrlUpdateFile.dart';


Future Loginapi(loginreq) async {
  try {
    print("first");
    print(AppConfig.baseUrl);
  var url = "${AppConfig.baseUrl}/UserLogin";
  print(Uri.parse(url));
    final response = await http.post(Uri.parse(url), body: json.encode(loginreq), headers: {
      'Content-Type': 'application/json',
    });
    print(response);
  return handleResponse(response);
  } catch (error) {
    Get.snackbar("Error", "Invaild Login",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red);
    return null;
  }
}


Future getsubNews(productid) async {
  var url = "${AppConfig.baseUrl}/Inventory/Getbycode?OrganizationId=1&ProductId=$productid";
  return handleResponse(await http.get(
    Uri.parse(url),
  ));
}

Future getProductByname(prductname) async {
  var url = "${AppConfig.baseUrl}/Inventory/GetAllProductWithStock?OrganizationId=1&BranchCode=jp&ProductName=$prductname";
  return handleResponse(await http.get(
    Uri.parse(url),
  ));
}

Future getallNews() async {
  var url = "${AppConfig.baseUrl}/Inventory/GetAllProductWithStock?OrganizationId=1&BranchCode=1";
  return handleResponse(await http.get(
    Uri.parse(url),
  ));
}

Future getProductDetails() async {
  var url = "${AppConfig.baseUrl}/Inventory/GetAllProductWithStock?OrganizationId=1&BranchCode=JP";
  return handleResponse(await http.get(
    Uri.parse(url),
  ));
}

Future updateStockDetail(req) async {
  var url = "${AppConfig.baseUrl}/Inventory/UpdateInventory";
  return handleResponse(
      await http.post(Uri.parse(url), body: json.encode(req), headers: {
    'Content-Type': 'application/json',
  }));
}

Future companylist() async {
  var url = "${AppConfig.baseUrl}/GetAll";
  return handleResponse(await http.get(
    Uri.parse(url),
  ));
}

