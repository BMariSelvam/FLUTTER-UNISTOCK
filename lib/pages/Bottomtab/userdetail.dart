import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../apiservices/UrlUpdateFile.dart';
import '../../ui_button.dart';
import '../loginpage.dart';

class UserDetail extends StatefulWidget {
  final bool? loged;

  const UserDetail({required this.loged, super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  TextEditingController updateUrlController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isSelected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUrlController = TextEditingController(text: AppConfig.baseUrl);
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: true,
        title: const Text(
          'URL Update',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          (widget.loged == true)
              ? Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const LoginPage()),
                        // );
                        Get.offAllNamed(LoginPage.routeName);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff159594)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                  color: Color(0xff159594),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ))),
                )
              : Container(),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: TextFormField(
                controller: updateUrlController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter the URL';
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Selling Price",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Switch(
                  activeColor: Color(0xff159594),
                  value: isSelected, // Replace _isToggled with your boolean variable that holds the toggle state
                  onChanged: (value) async {
                    setState(() {
                      isSelected = value; // Update the value of _isToggled when the switch is toggled
                    });
                    print(isSelected);
                    await AppConfig.saveIsToggle(
                        isRegistrationDone: value);
                  },
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SubmitButton(
          isLoading: false,
          onTap: () async {
            FocusScope.of(context).unfocus();
              await AppConfig.setBaseUrl(updateUrlController.text);
            Get.offAllNamed(LoginPage.routeName);
          },
          title: "Update",
        ),
      ),
    );
  }
}
