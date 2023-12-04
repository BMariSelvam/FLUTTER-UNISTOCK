import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample_design/Getxcontrollers/stockdetail.dart';
import 'package:flutter_sample_design/apiservices/apiservice.dart';
import 'package:flutter_sample_design/model/stockmodel.dart';
import 'package:flutter_sample_design/pages/stockupdatesuccess.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsEdit extends StatefulWidget {
  const ProductDetailsEdit({super.key});

  @override
  State<ProductDetailsEdit> createState() => _ProductDetailsEditState();
}

class _ProductDetailsEditState extends State<ProductDetailsEdit> {
 final DataController dataController = Get.find();
  var stockupadte = TextEditingController();
  var purchaseprice = TextEditingController();
  var sellingPrices = TextEditingController();
  late StockDetails stockdata;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    stockdata = dataController.products[0];
    setState(() {
      stockupadte.text = stockdata.qtyInHand.toString();
      sellingPrices.text = stockdata.sellingPrice.toString();
    });
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
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                            "Product Details",
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
                                  "product name",
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
                          Container(
                            margin: const EdgeInsets.only(top: 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "QTY in hand",
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
                                      "${stockdata.qtyInHand}",
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
                                    "Stock",
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
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: TextField(
                                        controller: stockupadte,
                                        readOnly: false,
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff1D2226)),
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 13),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Purchase Price",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff159594)),
                                        ),
                                        Container(
                                          height: 42,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Color(0xffF6F6F6)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0),
                                            child: TextField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                labelText:
                                                    "${stockdata.unitCost}",
                                                labelStyle: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(
                                                        0xff1D2226)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 13),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Selling Price",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff159594)),
                                              ),
                                              Container(
                                                height: 42,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Color(0xffF6F6F6)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 16.0),
                                                  child: TextField(
                                                    readOnly: false,
                                                    controller: sellingPrices,
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: const Color(
                                                            0xff1D2226)),
                                                    decoration:
                                                        const InputDecoration(
                                                      border: InputBorder.none,
                                                      // labelText: "${stockdata.sellingPrice}",
                                                      // labelStyle:
                                                      //     GoogleFonts.poppins(
                                                      //         fontSize: 12,
                                                      //         fontWeight:
                                                      //             FontWeight
                                                      //                 .w600,
                                                      //         color: const Color(
                                                      //             0xff1D2226)),
                                                      // suffixIcon: Padding(
                                                      //   padding:
                                                      //       const EdgeInsets
                                                      //           .all(15.0),
                                                      //   child: Image.asset(
                                                      //       "assets/editpen.png"),
                                                      // )
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ]),
                        Container(
                          margin: const EdgeInsets.only(top: 35),
                          height: 45,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2.4,
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
                              InkWell(
                                onTap: () {
                                  var req = {
                                    "InventoryCode":
                                        stockdata.inventoryCode.toString(),
                                    "QtyOnHand": stockdata.qtyInHand,
                                    "Stock": int.parse(stockupadte.text),
                                    "SellingPrice":
                                        double.parse(sellingPrices.text)
                                  };
                                  updateStockDetail(req).then((value) {
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
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.4,
                                  decoration: BoxDecoration(
                                      color: Color(0xff159594),
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: const [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.15),
                                            blurRadius: 15)
                                      ]),
                                  child: Center(
                                    child: Text(
                                      "Update",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xffffffff)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                ))));
  }
}
