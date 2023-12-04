import 'package:flutter_sample_design/Getxcontrollers/productscontroller.dart';
import 'package:flutter_sample_design/Getxcontrollers/stockdetail.dart';
import 'package:get/get.dart';

Future<void> init() async {
Get.put(DataController());
Get.put(ProductController());
 
}