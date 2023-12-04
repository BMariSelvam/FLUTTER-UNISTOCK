import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/stockmodel.dart';
import 'ProductDeteilController.dart';

class ProductDeatilsScreen extends StatefulWidget {
  const ProductDeatilsScreen({
    Key? key,
  }) : super(key: key);

  static const String routeName = "/product_detail_screen";

  @override
  State<ProductDeatilsScreen> createState() => _ProductDeatilsScreenState();
}

class _ProductDeatilsScreenState extends State<ProductDeatilsScreen> {
  var stockupadte = TextEditingController();
  late StockDetails _stockDetails;
  late ProdectdetailController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = Get.put(ProdectdetailController());
    _stockDetails = Get.arguments as StockDetails;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProdectdetailController>(builder: (logic) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white24,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.blue),
          title: Text(
            "Stock Details",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${_stockDetails.inventoryCode}",
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
                                padding:
                                    const EdgeInsets.only(top: 12.0, left: 14),
                                child: Text(
                                  "${_stockDetails.inventoryCode}",
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
                              "Product Name",
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
                                    const EdgeInsets.only(top: 12.0, left: 14),
                                child: Text(
                                  "${_stockDetails.description}",
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
                              "QTY in Hand",
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
                                    const EdgeInsets.only(top: 12.0, left: 14),
                                child: Text(
                                  "${_stockDetails.qtyInHand ?? 0}",
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
                                "Selling Price",
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
                                    "${_stockDetails.sellingPrice}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff1D2226)),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ]),
                  ]),
            )),
        // bottomNavigationBar: Container(
        //   margin: const EdgeInsets.only(top: 35, bottom: 30),
        //   height: 45,
        //   width: double.infinity,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       GestureDetector(
        //         onTap: () {
        //           Navigator.of(context).pop();
        //         },
        //         child: Container(
        //           width: MediaQuery
        //               .of(context)
        //               .size
        //               .width / 2.4,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(5),
        //             border: Border.all(
        //               color: Color(0xff159594),
        //               width: 1,
        //             ),
        //           ),
        //           child: Center(
        //             child: Text(
        //               "Cancel",
        //               style: GoogleFonts.poppins(
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.w500,
        //                   color: const Color(0xff159594)),
        //             ),
        //           ),
        //         ),
        //       ),
        //       InkWell(
        //         onTap: () {
        //         _controller.updatePrdouct( _stockDetails
        //             .inventoryCode , _stockDetails
        //             .qtyInHand , stockupadte.text , _stockDetails
        //             .sellingPrice );
        //         },
        //         child: Container(
        //           width:
        //           MediaQuery
        //               .of(context)
        //               .size
        //               .width / 2.4,
        //           decoration: BoxDecoration(
        //               color: Color(0xff159594),
        //               borderRadius: BorderRadius.circular(5),
        //               boxShadow: const [
        //                 BoxShadow(
        //                     color:
        //                     Color.fromRGBO(0, 0, 0, 0.15),
        //                     blurRadius: 15)
        //               ]),
        //           child: Center(
        //             child: Text(
        //               "Update",
        //               style: GoogleFonts.poppins(
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.w500,
        //                   color: const Color(0xffffffff)),
        //             ),
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ));
    });
  }
}
