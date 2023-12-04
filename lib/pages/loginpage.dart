import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_sample_design/pages/Bottomtab/userdetail.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ui_button.dart';
import 'loginpagecontroller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String routeName = "/login_screen";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // var userName = TextEditingController();
  // var passWord = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool passwordVisibility = true;
  bool _isChecked = false;

  late LoginController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = Get.put(LoginController());
    // _controller.userName.text = "UNIPRO";
    // _controller.passWord.text = "upsadmin";
    loadUserEmailPassword();
  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (logic) {
      return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
          backgroundColor: Color(0xff159594),
          actions: [
            IconButton(onPressed: () {
              Get.to(() => const UserDetail(loged: false));
            },
                icon: Icon(Icons.settings))
          ],
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 25, left: 32),
                  child: Text(
                    "You’re almost there",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff000000)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 32),
                  child: Text(
                    "Finish creating your account for the full\n Experience...",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff888888)),
                  ),
                ),
                Center(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        top: 32.0,
                      ),
                      child: Image.asset(
                        "assets/bro.png",
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 32, right: 32),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Color(0xffeff9e4),
                        borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      controller: _controller.userName,
                      style: TextStyle(color: Colors.black),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter the user name';
                        } else {
                          return null;
                        }
                      },
                      // onChanged: (value) {
                      //   if (value.length > 4) {
                      //     // context
                      //     //     .read<UserBloc>()
                      //     //     .add(LoadCatgoryTextEvent(value));
                      //   } else {
                      //     // context
                      //     //     .read<UserBloc>()
                      //     //     .add(LoadUserEvent());
                      //   }
                      // },
                      decoration: InputDecoration(
                        label: Text('User Name'),
                        labelStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey[500]),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Color(0xffeff9e4),
                        borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      controller: _controller.passWord,
                      obscureText: passwordVisibility,
                      style: TextStyle(color: Colors.black),
                      onChanged: (value) {
                        if (value.length > 4) {
                        } else {}
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter the password';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        label: Text('Password'),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordVisibility = !passwordVisibility;
                            });
                          },
                          icon: passwordVisibility
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                        ),
                        labelStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey[500],),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                remberMeCheckBox(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: SubmitButton(
                    isLoading: _controller.isLoading.value,
                    onTap: () {
                      // Get.offAllNamed(HomePage.routeName);
                      FocusScope.of(context).unfocus();
                      if (_formKey.currentState!.validate()) {
                        _controller.loginfunc();
                      }
                    },
                    title: "Login",
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  remberMeCheckBox() {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: 24.0,
          width: 24.0,
          child: Theme(
              data: ThemeData(
                  unselectedWidgetColor:  Color(0xff159594)
              ),
              child: Checkbox(
                activeColor:  Color(0xff159594),
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    handleRemeberme(value!);
                  });
                },
              )),
        ),
        const SizedBox(width: 10.0),
        const Text("Remember Me",
            style: TextStyle(
              color: Colors.green,
              fontSize: 15,
            ))
      ]),
    );
  }

  //handle remember me function
  handleRemeberme(bool value) {
    _isChecked = value;
    SharedPreferences.getInstance().then(
          (prefs) {
        prefs.setBool("remember_me", value);
        prefs.setString('User Name', _controller.userName.text);
        prefs.setString('password',_controller.passWord.text);
      },
    );
    setState(() {
      _isChecked = value;
    });
  }

  //load email and password
  loadUserEmailPassword() async {
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _email = _prefs.getString("User Name") ?? "";
      var _password = _prefs.getString("password") ?? "";
      var _remeberMe = _prefs.getBool("remember_me") ?? false;
      print(_remeberMe);
      print(_email);
      print(_password);
      if (_remeberMe) {
        setState(() {
          _isChecked = true;
        });
        _controller.userName.text = _email ?? "";
        _controller.passWord.text = _password ?? "";
      }
    } catch (e) {
      print(e);
    }
  }
}
