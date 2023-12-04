import 'package:flutter/material.dart';
import 'package:flutter_sample_design/pages/purchase/AddTapBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff159594),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Purchase Invoice',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddTabBarScreen(),
                  ));
            },
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.add_circle_outline_sharp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          invoiceList(),
        ],
      ),
    );
  }

  invoiceList() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(
              top: 2,
            ),
            child: Card(
              elevation: 2,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: const Text(
                                  "HSVD724B4IYQWEQVHVJG",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.black),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 1,
                                  right: 10,
                                ),
                                padding: const EdgeInsets.only(
                                  left: 1,
                                  right: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xff159594),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 10,
                                          top: 3,
                                          bottom: 3),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(
                                            Icons.edit_document,
                                            color: Color(0xff159594),
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "Select",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 9,
                                                color: Color(0xff159594)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    const EditPopupMenuButton(),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 60,
                                        child: const Text(
                                          "Invoice No : ",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        child: const Text(
                                          "HSVD724B4IYQWEQVHVJG",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: 60,
                                        child: const Text(
                                          " Date           : ",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        child: const Text(
                                          "9-8-2023",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Net Total',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.black)),
                                  SizedBox(height: 10),
                                  Text(" \$ 999",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.green)),
                                ],
                              ),
                              const Column(
                                children: [
                                  Text('Balance',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.black)),
                                  SizedBox(height: 10),
                                  Text("\$ 436",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.red)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}

class EditPopupMenuButton extends StatelessWidget {
  const EditPopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23,
      width: 30,
      child: PopupMenuButton(
        iconSize: 25,
        padding: const EdgeInsets.only(bottom: 10),
        icon: const Icon(
          Icons.arrow_drop_down_rounded,
          color: Colors.white,
        ),
        offset: const Offset(0, 30),
        itemBuilder: (_) => <PopupMenuEntry>[
          PopupMenuItem(
              child: ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color(0xff159594), width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            leading: const Icon(Icons.edit_document, color: Color(0xff159594)),
            title: const Text(
              'Edit ',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Color(0xff159594)),
            ),
            trailing: const Icon(
              Icons.arrow_drop_up_rounded,
              color: Colors.black,
              size: 30,
            ),
          )),
          PopupMenuItem(
              child: ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color(0xff159594), width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            leading: const Icon(Icons.edit_document, color: Color(0xff159594)),
            title: const Text(
              'Create Order ',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Color(0xff159594)),
            ),
          )),
        ],
      ),
    );
  }
}
