
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample_design/Getxcontrollers/stockdetail.dart';
import 'package:flutter_sample_design/apiservices/apiservice.dart';
import 'package:flutter_sample_design/model/stockmodel.dart';
import 'package:flutter_sample_design/pages/stockupdatecontroller.dart';
import 'package:flutter_sample_design/pages/stockupdatesuccess.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../apiservices/UrlUpdateFile.dart';
import '../ui_button.dart';

class StockUpdateDetais extends StatefulWidget {
  const StockUpdateDetais({super.key});

  @override
  State<StockUpdateDetais> createState() => _StockUpdateDetaisState();
}

class _StockUpdateDetaisState extends State<StockUpdateDetais> {
  final DataController dataController = Get.find();
  var stockupadte = TextEditingController();
  var fixedSelling = TextEditingController();
  var fixedretailPrice = TextEditingController();
  var sellingPrice = TextEditingController();
  var retailPrice = TextEditingController();
  var purchaseprice = TextEditingController();
  var sellingPrices = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late StockDetails stockdata;
  late StockUpdateController _controller;

  bool isSelected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = Get.put(StockUpdateController());
    stockdata = dataController.products[0];
    setState(() {
      // stockupadte.text = stockdata.qtyInHand.toString();
      fixedSelling.text = stockdata.sellingPrice.toString();
      fixedretailPrice.text = stockdata.retailPrice.toString();

      sellingPrice.text = stockdata.sellingPrice.toString();
      retailPrice.text = stockdata.retailPrice.toString();
      print("sellingPrice    ${stockdata.sellingPrice}");
    });
    checkToggle();
  }

  checkToggle() async {
    await AppConfig.getIsToggle().then((value) =>
        setState(() {
          isSelected = value;
        })
    );
  }


  @override
  Widget build(BuildContext context) {
      return SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          "assets/backarrow.png",
                        ),
                      ),
                    ],
                  ),
                )),
            body: Form(
              key: _formKey,
              child:  Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child:
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${stockdata.inventoryCode}",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff000000))),
                                  Image.asset(
                                    "assets/barchek.png",
                                    height: 45,
                                    width: 45,
                                  ),
                                ],
                              ))),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Text(
                          "Stock Details",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      Column(children: [
                        Container(
                          margin: const EdgeInsets.only(top: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Product Code",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff159594)),
                              ),
                              Container(
                                height: 42,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xffF6F6F6)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12.0, left: 14),
                                  child: Text(
                                    "${stockdata.inventoryCode}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff1D2226)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "product Name",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff159594)),
                              ),
                              Container(
                                height: 42,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xffF6F6F6)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12.0, left: 14),
                                  child: Text(
                                    "${stockdata.description}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff1D2226)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        // Container(
                        //   margin: const EdgeInsets.only(top: 13),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Text(
                        //         "QTY in Hand",
                        //         style: GoogleFonts.poppins(
                        //             fontSize: 12,
                        //             fontWeight: FontWeight.w500,
                        //             color: const Color(0xff159594)),
                        //       ),
                        //       Container(
                        //         height: 42,
                        //         width: double.infinity,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(5),
                        //             color: Color(0xffF6F6F6)),
                        //         child: Padding(
                        //           padding: const EdgeInsets.only(
                        //               top: 12.0, left: 14),
                        //           child: Text(
                        //             "${stockdata.qtyInHand}",
                        //             style: GoogleFonts.poppins(
                        //                 fontSize: 12,
                        //                 fontWeight: FontWeight.w600,
                        //                 color: const Color(0xff1D2226)),
                        //           ),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        Container(
                          margin: const EdgeInsets.only(top: 13),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   "Current Stock",
                                //   style: GoogleFonts.poppins(
                                //       fontSize: 12,
                                //       fontWeight: FontWeight.w500,
                                //       color: const Color(0xff159594)),
                                // ),
                                // Container(
                                //   height: 42,
                                //   width: double.infinity,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(5),
                                //       color: Color(0xffF6F6F6)),
                                //   child: Padding(
                                //     padding: const EdgeInsets.only(left: 16.0),
                                //     child: TextFormField(
                                //       controller: stockupadte,
                                //       readOnly: false,
                                //       keyboardType: TextInputType.number,
                                //       style: GoogleFonts.poppins(
                                //           fontSize: 12,
                                //           fontWeight: FontWeight.w600,
                                //           color: const Color(0xff1D2226)),
                                //       decoration: const InputDecoration(
                                //         border: InputBorder.none,
                                //       ),
                                //       validator: (value) {
                                //         if (value == null || value.isEmpty) {
                                //           return 'Update your Stock';
                                //         } else {
                                //           return null;
                                //         }
                                //       },
                                //     ),
                                //   ),
                                // ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Current Stock",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff159594)),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 42,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Color(0xffF6F6F6)),
                                            child: Padding(
                                                padding: const EdgeInsets.only(left: 16.0,top: 10),
                                                child: Text(
                                                  "${stockdata.qtyInHand}",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: const Color(0xff1D2226)),
                                                ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 1,
                                      child:  Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "New Current Stock",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff159594)),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 42,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Color(0xffF6F6F6)),
                                            child: Padding(
                                                padding: const EdgeInsets.only(left: 16.0),
                                                child: TextFormField(
                                                  controller: stockupadte,
                                                  keyboardType: TextInputType.number,
                                                  readOnly: false,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: const Color(0xff1D2226)),
                                                  decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                  ),
                                                  validator: (value) {
                                                    if (value == null || value.isEmpty) {
                                                      return 'Update your sellingPrice';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                (isSelected) ?
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Selling Price",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff159594)),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 42,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Color(0xffF6F6F6)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 16.0),
                                              child: TextFormField(
                                                controller: fixedSelling,
                                                keyboardType: TextInputType.number,
                                                readOnly: true,
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(0xff1D2226)),
                                                decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                ),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return 'Update your sellingPrice';
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                              )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 1,
                                      child:  Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "New Selling Price",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff159594)),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 42,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Color(0xffF6F6F6)),
                                            child: Padding(
                                                padding: const EdgeInsets.only(left: 16.0),
                                                child: TextFormField(
                                                  controller: sellingPrice,
                                                  keyboardType: TextInputType.number,
                                                  readOnly: false,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: const Color(0xff1D2226)),
                                                  decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                  ),
                                                  validator: (value) {
                                                    if (value == null || value.isEmpty) {
                                                      return 'Update your sellingPrice';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ) : Container() ,
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child:  Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Retail Price",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff159594)),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 42,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Color(0xffF6F6F6)),
                                            child: Padding(
                                                padding: const EdgeInsets.only(left: 16.0),
                                                child: TextFormField(
                                                  controller: fixedretailPrice,
                                                  keyboardType: TextInputType.number,
                                                  readOnly: true,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: const Color(0xff1D2226)),
                                                  decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 1,
                                      child:  Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "New Retail Price",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff159594)),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 42,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Color(0xffF6F6F6)),
                                            child: Padding(
                                                padding: const EdgeInsets.only(left: 16.0),
                                                child: TextFormField(
                                                  controller: retailPrice,
                                                  keyboardType: TextInputType.number,
                                                  readOnly: false,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: const Color(0xff1D2226)),
                                                  decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 150),
                                  height: 45,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width / 2.4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                              color: Color(0xff159594),
                                              width: 1,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color(0xff159594)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2.4,
                                        child:  SubmitButton(
                                          isLoading: _controller.isLoading.value,
                                          onTap: () {
                                            // Get.offAllNamed(HomePage.routeName);
                                            FocusScope.of(context).unfocus();
                                            if (_formKey.currentState!.validate()) {
                                              _controller.updatePrdouct( stockdata
                                                  .inventoryCode , stockdata
                                                  .qtyInHand , (stockupadte.text != "") ? stockupadte.text :stockdata
                                                  .qtyInHand , sellingPrice.text, retailPrice.text);
                                            }
                                          },
                                          title: "Update",
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ]),
                    ]),
                  )),
            ),
          ));
  }
}
