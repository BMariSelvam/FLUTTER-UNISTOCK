import 'package:flutter/material.dart';
import 'package:flutter_sample_design/pages/purchase/Custom_TextField_2.dart';
import 'package:flutter_sample_design/pages/purchase/searchTextField.dart';
import 'package:get/get.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  TextEditingController barcodecontroller = TextEditingController();
  TextEditingController searchcontroller = TextEditingController();
  TextEditingController productNamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2.5.toInt(),
                    child: CustomTextField2(
                      inputBorder: const OutlineInputBorder(),
                      controller: barcodecontroller,
                      keyboardType: TextInputType.datetime,
                      hintText: "Barcode",
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: const EdgeInsets.all(13),
                        margin: const EdgeInsets.only(
                            top: 13, bottom: 18, right: 18, left: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff159594)),
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: searchTextField(
                inputBorder: InputBorder.none,
                controller: searchcontroller,
                keyboardType: TextInputType.text,
                hintText: "Search Customer",
                suffixIcon: const Icon(Icons.clear, color: Color(0xff159594)),
                prefixIcon: const Icon(Icons.search, color: Color(0xff159594)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: CustomTextField2(
                inputBorder: const OutlineInputBorder(),
                controller: productNamecontroller,
                keyboardType: TextInputType.datetime,
                labelText: "Product Name",
                hintText: "ochd3122",
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: const Text(
                "Stock",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField2(
                    inputBorder: const OutlineInputBorder(),
                    controller: barcodecontroller,
                    keyboardType: TextInputType.datetime,
                    hintText: "0",
                    labelText: "Carton",
                  ),
                ),
                Expanded(
                  child: CustomTextField2(
                    inputBorder: const OutlineInputBorder(),
                    controller: barcodecontroller,
                    keyboardType: TextInputType.datetime,
                    hintText: "0",
                    labelText: "Unit",
                  ),
                ),
                Expanded(
                  child: CustomTextField2(
                    inputBorder: const OutlineInputBorder(),
                    controller: barcodecontroller,
                    keyboardType: TextInputType.datetime,
                    hintText: "qty",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.arrow_drop_down_rounded,
                      size: 40, color: Color(0xff159594)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField2(
                    inputBorder: const OutlineInputBorder(),
                    controller: barcodecontroller,
                    keyboardType: TextInputType.datetime,
                    hintText: "0",
                    labelText: "Pcs",
                  ),
                ),
                Expanded(
                  child: CustomTextField2(
                    inputBorder: const OutlineInputBorder(),
                    controller: barcodecontroller,
                    keyboardType: TextInputType.datetime,
                    hintText: "0",
                    labelText: "Carton Price",
                  ),
                ),
                Expanded(
                  child: CustomTextField2(
                    inputBorder: const OutlineInputBorder(),
                    controller: barcodecontroller,
                    keyboardType: TextInputType.datetime,
                    hintText: "0",
                    labelText: "Unit price",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(5),
        color: const Color(0xff159594),
        child: Table(
          children: [
            TableRow(children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '0.00',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Tax',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '0.00',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Net Total',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '0.00',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
