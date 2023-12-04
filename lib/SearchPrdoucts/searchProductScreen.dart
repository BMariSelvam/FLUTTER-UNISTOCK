import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_sample_design/SearchPrdoucts/searchPrdouctController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../apiservices/apiservice.dart';
import '../model/stockmodel.dart';
import 'ProductDeteilsScreen.dart';

class ProductSearchScreen extends StatefulWidget {

  final Function(int)? onTabChanged;
  final String name;
  const ProductSearchScreen({super.key, this.onTabChanged, required this.name});

  @override
  State<ProductSearchScreen> createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  TextEditingController _searchByQrController = TextEditingController();
  var barcodeNumber = TextEditingController();
  var stockupadte = TextEditingController();
  late SearchProductController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = Get.put(SearchProductController());
    _controller.displayList.value = _controller.productList.value;
  }

  void _listingProfile(String value) {
    if (_searchByQrController.text.isEmpty == true) {
      _controller.displayList.value = _controller.productList.value;
    } else {
      _controller.displayList.value = _controller.productList
          .where((element) => element.inventoryCode!
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchProductController>(builder: (logic)
    {
      if (logic.isLoading == true) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white24,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.blue),
            title: Text(
              "Stock In",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                if (widget.name != "" || widget.name != null) {
                  widget.onTabChanged!.call(0);
                } else {
                  widget.onTabChanged!.call(0);
                }
              }
            ),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 26),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffeff9e4),
                  ),
                  child:  TextField(
                      controller: _searchByQrController,
                      onChanged: (value) => _listingProfile(value),
                      // onTap: () async {
                      //   // _searchByQrController.clear();
                      // },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Search By QR',
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _scanQrcode();
                            },
                            icon: Image.asset("assets/barchek.png",
                                color: Colors.black, height: 20, width: 20),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(10, 5, 20, 5)),
                    ),
                ),
                SizedBox(height: 20),
                Obx(() {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: _controller.displayList.value.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed(ProductDeatilsScreen.routeName,
                              arguments: _controller.displayList.value[index]);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.circular(8)),
                            width: double.infinity,
                            child: Padding(
                              padding:EdgeInsets.symmetric(horizontal: 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Inventory Code :", style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff000000)),
                                      ),
                                      SizedBox(
                                        height: 25,
                                        width: 200,
                                        child:  Text(
                                          ' ${_controller.displayList.value[index].inventoryCode}',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xff159594)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Product Name :", style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff000000)),
                                      ),
                                      SizedBox(
                                        height: 25,
                                        width: 200,
                                        child:  Text(
                                          ' ${_controller.displayList.value[index].description}',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xff159594)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      );
    });
  }

  Scancodeprdouct(type) {
    // isLoading.value = true;
    getsubNews(type).then((value) {
      // isLoading.value = false;
      Map<String, dynamic>? products = (value["Data"] as List).first;
      if (products != null) {
        StockDetails stockDetails =
        StockDetails.fromJson(products);
        Get.toNamed(ProductDeatilsScreen.routeName,
            arguments: stockDetails);
      } else {
        Get.snackbar("Sorry", "Sorry stock not found",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red.withOpacity(0.1),
            colorText: Colors.red);
      }
    }).catchError((e) {
      Get.snackbar("Sorry", "$e",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.1),
          colorText: Colors.red);
    });
  }

  _scanQrcode() async {
    String scanCode = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", false, ScanMode.BARCODE);
    if (scanCode != '-1') {
      FocusScope.of(context).unfocus();
      _searchByQrController.text = scanCode;
      Scancodeprdouct(_searchByQrController.text);
    }
  }

}
