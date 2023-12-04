import 'package:flutter/material.dart';
import 'package:flutter_sample_design/model/stockmodel.dart';
import 'package:flutter_sample_design/pages/Bottomtab/productpage.dart';
import 'package:flutter_sample_design/pages/Bottomtab/stockpage.dart';
import 'package:flutter_sample_design/pages/purchase/purchase_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../SearchPrdoucts/searchProductScreen.dart';
import '../homepagecontroller.dart';
import '../urlgetting/updateurl.dart';

class HomeDetailpage extends StatefulWidget {
  final Function(int)? onTabChanged;
  final String name;
  const HomeDetailpage({super.key, this.onTabChanged, required this.name});

  @override
  State<HomeDetailpage> createState() => _HomeDetailpageState();
}

class _HomeDetailpageState extends State<HomeDetailpage> {
  late HomeController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = Get.put(HomeController());
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (logic) {
      if (logic.status == RxStatus.loading()) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white24,
          // centerTitle: true,
          // title: Obx(() {
          //   return  Text((_controller.comapnydetails.isNotEmpty) ?_controller.comapnydetails.value.first.name ?? "" : "",
          //     style: GoogleFonts.poppins(
          //         fontSize: 18,
          //         fontWeight: FontWeight.bold,
          //         color: const Color(0xff000000)),
          //   );
          // }),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.blue),
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         Get.to(() => UpdateUrl());
          //       },
          //       icon: Icon(Icons.settings))
          // ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Text(
                    "Welcome Back !",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff000000)),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 4.0),
                //   child: Text(
                //     "${controller.comapnydetails.value.first.name}",
                //     style: GoogleFonts.poppins(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w500,
                //         color: const Color(0xff888888)),
                //   ),
                // ),
                Container(
                  height: 50,
                  width: double.infinity,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  //   color: const Color(0xffeff9e4),
                  // ),
                  child: Center(child: Obx(() {
                    return Text(
                      (_controller.comapnydetails.isNotEmpty)
                          ? _controller.comapnydetails.value.first.name ?? ""
                          : "",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff000000)),
                    );
                  })),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 25.0),
                //   child: Text(
                //     "Services",
                //     style: GoogleFonts.poppins(
                //         fontSize: 20,
                //         fontWeight: FontWeight.w600,
                //         color: const Color(0xff000000)),
                //   ),
                // ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.9,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // if (widget.name != "" || widget.name != null) {
                          //   widget.onTabChanged!.call(1);
                          // } else {
                          //   widget.onTabChanged!.call(1);
                          // }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          decoration: BoxDecoration(
                              color: const Color(0XFFBADAA3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 150,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFFFFFFF),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Image.asset("assets/box 1.png"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    "Stack In",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff000000)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //     builder: (context) =>
                                    //         ProductSearchScreen()));
                                    if (widget.name != "" ||
                                        widget.name != null) {
                                      widget.onTabChanged!.call(1);
                                    } else {
                                      widget.onTabChanged!.call(1);
                                    }
                                  },
                                  child: Center(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Color(0xff159594),
                                              width: 1)),
                                      child: Center(
                                        child: Text(
                                          "View Stock",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xffffffff)),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InvoiceScreen(),
                              ));
                          // if (widget.name != "" || widget.name != null) {
                          //   widget.onTabChanged!.call(2);
                          // } else {
                          //   widget.onTabChanged!.call(2);
                          // }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          // height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                              color: const Color(0XFFAA94D8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 150,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFFFFFFF),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Image.asset("assets/box 1.png"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    "Purchase",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff000000)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (widget.name != "" ||
                                        widget.name != null) {
                                      widget.onTabChanged!.call(2);
                                    } else {
                                      widget.onTabChanged!.call(2);
                                    }
                                  },
                                  child: Center(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Color(0xff159594),
                                              width: 1)),
                                      child: Center(
                                        child: Text(
                                          "View Purchase",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xffffffff)),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 35.0),
                //   child: Text(
                //     "Services",
                //     style: GoogleFonts.poppins(
                //         fontSize: 20,
                //         fontWeight: FontWeight.w600,
                //         color: const Color(0xff000000)),
                //   ),
                // ),
                // Container(
                //   margin: const EdgeInsets.only(top:16),
                //   width: double.infinity,
                //   height: MediaQuery.of(context).size.height/5,
                //   decoration: BoxDecoration(
                //     color: Color(0xff159594),
                //     borderRadius: BorderRadius.circular(10)
                //   ),
                // )
              ],
            ),
          ),
        ),
      ));
    });
  }
}
