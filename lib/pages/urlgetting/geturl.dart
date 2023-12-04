import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sample_design/core/baseurls.dart';
import 'package:flutter_sample_design/pages/urlgetting/updateurl.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../homepage.dart';

class GetUrl extends StatefulWidget {
  const GetUrl({Key? key}) : super(key: key);

  @override
  State<GetUrl> createState() => _GetUrlState();
}

class _GetUrlState extends State<GetUrl> {
  final TextEditingController _urlController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _urlController.text = BaseUrl.base;
    Timer(
      const Duration(seconds: 5),
      () => Get.to(() => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        centerTitle: true,
        title: Text(
          'UniStocks',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 250, 20, 0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                'Hii..Welcome',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Getting URL',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: _urlController,
                readOnly: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
