import 'package:flutter/material.dart';
import 'package:flutter_sample_design/core/baseurls.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../apiservices/UrlUpdateFile.dart';
import '../../ui_button.dart';
import '../loginpage.dart';

class UpdateUrl extends StatefulWidget {
  const UpdateUrl({Key? key}) : super(key: key);

  @override
  State<UpdateUrl> createState() => _UpdateUrlState();
}

class _UpdateUrlState extends State<UpdateUrl> {
  TextEditingController updateUrlController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUrlController = TextEditingController(text: AppConfig.baseUrl);
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: Container(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    controller: updateUrlController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter the user name';
                      } else {
                        return null;
                      }
                    },        ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: SubmitButton(
                  isLoading: false,
                  onTap: () async {
                    // Get.offAllNamed(HomePage.routeName);
                    FocusScope.of(context).unfocus();
                    if (_formKey.currentState!.validate()) {
                      print(updateUrlController.text);
                      print(AppConfig.baseUrl);
                      await AppConfig.setBaseUrl(updateUrlController.text);
                      Get.to(const LoginPage());
                    }
                  },
                  title: "Update",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
