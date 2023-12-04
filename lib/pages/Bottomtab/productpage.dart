import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample_design/Getxcontrollers/productscontroller.dart';
import 'package:flutter_sample_design/pages/producteditpage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var searchcontroller = TextEditingController();
  bool check = false;
  final ProductController dataController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    print("The data is :${dataController.products.length}");
    return Scaffold(
        // bottomSheet: InkWell(
        //   onTap: () {
        //     //Navigator.push(context, MaterialPageRoute(builder: (context)=>StockUpdateDetais()));
        //   },
        //   child: Container(
        //     margin: const EdgeInsets.only(bottom: 35, left: 25, right: 25),
        //     height: 50,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //         color: Color(0xff159594),
        //         borderRadius: BorderRadius.circular(10)),
        //     child: Center(
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.only(left: 16.0),
        //             child: Text(
        //               "Scan",
        //               style: GoogleFonts.poppins(
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.w500,
        //                   color: const Color(0xff000000)),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(left: 22.0),
        //             child: Container(
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(7),
        //                   color: const Color(0xff159594)),
        //               child: Center(
        //                 child: Image.asset("assets/bartext.png"),
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  Get.back();
                },
                child: Image.asset("assets/backarrow.png")),
            Text(
              "Product List",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff000000)),
            ),
            Container()
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xffeff9e4),
              borderRadius: BorderRadius.circular(12)),
          child: TextField(
            controller: searchcontroller,
            onChanged: (value) {
              dataController.products = dataController.products
                  .where((e) => e.description! == value)
                  .toList();
            },
            decoration: InputDecoration(
                hintText: "Search Product",
                hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
                border: InputBorder.none,
                prefixIcon: InkWell(
                    onTap: () {
                      searchcontroller.text = "";
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Image.asset("assets/Vector (19).png"),
                    ))),
          ),
        ),
      ),
      // Container(
      //     margin: const EdgeInsets.only(top: 26),
      //     height: 70,
      //     width: double.infinity,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10),
      //       color: const Color(0xffeff9e4),
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(left: 16.0),
      //           child: Text(
      //             "Bar Code",
      //             style: GoogleFonts.poppins(
      //                 fontSize: 20,
      //                 fontWeight: FontWeight.w500,
      //                 color: const Color(0xff000000)),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(4.0),
      //           child: Container(
      //             height: 65,
      //             width: 65,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(7),
      //                 color: const Color(0xff159594)),
      //             child: Center(
      //               child: Image.asset("assets/barchek.png"),
      //             ),
      //           ),
      //         )
      //       ],
      //     )),
      Obx(
        () => dataController.isDataLoading.value == false
            ? Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 7),
                child: Lottie.network(
                    "https://assets6.lottiefiles.com/private_files/lf30_l8csvun7.json"))
            : Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height / 1,
                  margin: const EdgeInsets.only(top: 20),
                  child: ListView.builder(
                      itemCount: dataController.products.length,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final user = dataController.products[index];

                        return dataController.products.isEmpty
                            ? Image.asset("assets/Group 550.png")
                            : InkWell(
                                onLongPress: () {
                                  check = true;
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 13, left: 32, right: 42, bottom: 13),
                                  color: index % 2 != 0
                                      ? Color(0xffffffff)
                                      : Color(0xffF6F6F6),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Product ID",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff159594)),
                                              ),
                                              Text(
                                                "${user.inventoryCode}",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(
                                                        0xff717171)),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    12),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Quantity",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: const Color(
                                                          0xff159594)),
                                                ),
                                                Text(
                                                  "${user.qtyInHand}",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: const Color(
                                                          0xff717171)),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Product name",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: const Color(
                                                          0xff159594)),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0),
                                                  child: Text(
                                                    "${user.description}",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: const Color(
                                                            0xff717171)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 12.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Selling Price",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color(
                                                            0xff159594)),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8.0),
                                                    child: Text(
                                                      user.sellingPrice
                                                          .toString(),
                                                      style: GoogleFonts.poppins(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: const Color(
                                                              0xff717171)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Visibility(
                                        visible: check == true,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12.0, left: 40, right: 40),
                                          child: Center(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      Get.to(
                                                          ProductDetailsEdit());
                                                    },
                                                    child: Container(
                                                      height: 28,
                                                      width: 90,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xff159594),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: Center(
                                                        child: Image.asset(
                                                            "assets/Group 557.png"),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 28,
                                                    width: 90,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff159594),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                            "assets/Vector (20).png"),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            "View",
                                                            style: GoogleFonts.poppins(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: const Color(
                                                                    0xffffffff)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                      }),
                ),
              ),
      )
    ]));
  }
}
