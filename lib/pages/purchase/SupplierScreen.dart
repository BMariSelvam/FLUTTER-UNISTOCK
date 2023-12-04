import 'package:flutter/material.dart';
import 'package:flutter_sample_design/pages/purchase/Custom_TextField_2.dart';
import 'package:flutter_sample_design/pages/purchase/searchTextField.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  TextEditingController datecontroller = TextEditingController();
  TextEditingController deliveryDatecontroller = TextEditingController();
  TextEditingController customerNamecontroller = TextEditingController();
  TextEditingController searchcontroller = TextEditingController();
  TextEditingController customerAddresscontroller = TextEditingController();
  TextEditingController curencycontroller = TextEditingController();
  TextEditingController remarkcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              searchTextField(
                inputBorder: InputBorder.none,
                controller: searchcontroller,
                keyboardType: TextInputType.text,
                hintText: "Search Supplier",
                suffixIcon: const Icon(Icons.clear, color: Color(0xff159594)),
                prefixIcon: const Icon(Icons.search, color: Color(0xff159594)),
              ),
              CustomTextField2(
                inputBorder: const OutlineInputBorder(),
                controller: customerNamecontroller,
                keyboardType: TextInputType.datetime,
                labelText: "Supplier Name",
              ),
              CustomTextField2(
                maxLines: 7,
                inputBorder: const OutlineInputBorder(),
                controller: datecontroller,
                keyboardType: TextInputType.datetime,
                hintText: "Address",
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField2(
                      inputBorder: const OutlineInputBorder(),
                      controller: datecontroller,
                      keyboardType: TextInputType.datetime,
                      hintText: "Invoice No",
                      labelText: "Invoice No",
                    ),
                  ),
                  Expanded(
                    child: CustomTextField2(
                      inputBorder: const OutlineInputBorder(),
                      controller: deliveryDatecontroller,
                      keyboardType: TextInputType.datetime,
                      labelText: " Date",
                      hintText: " Date",
                      suffixIcon: const Icon(Icons.date_range,
                          color: Color(0xff159594)),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                clipBehavior: Clip.hardEdge,
                height: 70,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFC2FAFA),
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
                child: const Text(
                  'Outstanding',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: Color(0xff159594)),
                ),
              ),
              CustomTextField2(
                inputBorder: const OutlineInputBorder(),
                controller: curencycontroller,
                keyboardType: TextInputType.datetime,
                labelText: "Currency",
                hintText: "USD",
                suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded,
                    color: Color(0xff159594)),
              ),
              CustomTextField2(
                maxLines: 7,
                inputBorder: const OutlineInputBorder(),
                controller: remarkcontroller,
                keyboardType: TextInputType.datetime,
                hintText: "Remark",
              ),
            ],
          ),
        ));
  }
}
