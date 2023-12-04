import 'package:flutter_sample_design/apiservices/UrlUpdateFile.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductnameController extends GetxController with StateMixin {
  Rx<bool> isLoading = false.obs;
  List<String> suggestions = [];

  @override
  void onInit() {
    super.onInit();
    fetchSuggestions();
  }

  List PrductFullData = [];
  List<String> productNameList = [];

  fetchSuggestions() async {
    isLoading.value = true;
    change(null, status: RxStatus.loading());
    final response = await http.get(Uri.parse(
        '${AppConfig.baseUrl}/Inventory/GetAllProductWithStock?OrganizationId=1&BranchCode=1'));
    if (response.statusCode == 200) {
      isLoading.value = false;
      final data = json.decode(response.body);
      PrductFullData = data["Data"];
      for (var t = 0; t < PrductFullData.length; t++) {
        var uuu = PrductFullData[t]['Description'];
        productNameList.add(uuu);
      }
      change(null, status: RxStatus.success());
    } else {
      change(null, status: RxStatus.error());
      throw Exception('Failed to fetch suggestions');
    }
  }
}
