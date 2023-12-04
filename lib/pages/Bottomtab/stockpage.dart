import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_sample_design/Getxcontrollers/stockdetail.dart';
import 'package:flutter_sample_design/pages/stockupdatepage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../SearchPrdoucts/ProductDeteilsScreen.dart';
import '../../apiservices/apiservice.dart';
import '../../model/stockmodel.dart';
import '../stockPageController.dart';

class StockPage extends StatefulWidget {
  final Function(int)? onTabChanged;
  final String name;

  const StockPage({super.key, this.onTabChanged, required this.name});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  var barcodeNumber = TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<String>> key = new GlobalKey();

  Future<void> scanBarcode() async {
    String scanCode = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", false, ScanMode.BARCODE);
    if (scanCode != '-1') {
      FocusScope.of(context).unfocus();
      barcodeNumber.text = scanCode;
      Get.put(DataController()).getProduct(barcodeNumber.text);
    }
  }

  late ProductnameController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = Get.put(ProductnameController());
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductnameController>(builder: (logic) {
      if (logic.isLoading == true) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      return Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        if (widget.name != "" || widget.name != null) {
                          widget.onTabChanged!.call(0);
                        } else {
                          widget.onTabChanged!.call(0);
                        }
                      },
                      child: Image.asset(
                        "assets/backarrow.png",
                      ),
                    ),
                  ],
                ),
              )),
          bottomSheet: InkWell(
            onTap: () {
              Get.put(DataController()).getProductbyname(barcodeNumber.text);
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 35, left: 25, right: 25),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff159594),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        "Search",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff000000)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0xff159594)),
                        child: Center(
                          child: Image.asset("assets/bartext.png"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  "Stock In",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 26),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffeff9e4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleAutoCompleteTextField(
                    controller: barcodeNumber,
                    key: key,
                    suggestions: _controller.productNameList,
                    suggestionsAmount: 10,
                    clearOnSubmit: false,
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000)),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff000000)),
                        focusedBorder: InputBorder.none,
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: const Color(0xff159594)),
                            child: GestureDetector(
                              onTap: () {
                                scanBarcode();
                              },
                              child: Center(
                                child: Image.asset(
                                  "assets/barchek.png",
                                  height: 45,
                                  width: 45,
                                ),
                              ),
                            ),
                          ),
                        )),
                    // textSubmitted: (name) {
                    //   print("testing:" + name);
                    //   barcodeNumber.text = name;
                    //   // Navigator.of(context).push(
                    //   //   MaterialPageRoute(
                    //   //     builder: (BuildContext context) {
                    //   //       return Trip();
                    //   //     },
                    //   //   ),
                    //   // );
                    // },
                    submitOnSuggestionTap: true,
                  ),
                ),
              ),
            ]),
          ));
    });
  }

  Scancodeprdouct(type) {
    getsubNews(type).then((value) {
      Map<String, dynamic>? products = (value["Data"] as List).first;
      if (products != null) {
        StockDetails stockDetails = StockDetails.fromJson(products);
        Get.toNamed(ProductDeatilsScreen.routeName, arguments: stockDetails);
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
}
