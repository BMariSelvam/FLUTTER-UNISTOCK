import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample_design/pages/Bottomtab/homespage.dart';
import 'package:flutter_sample_design/pages/homepage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StockUpdateSucess extends StatefulWidget {
  const StockUpdateSucess({super.key});

  @override
  State<StockUpdateSucess> createState() => _StockUpdateSucessState();
}

class _StockUpdateSucessState extends State<StockUpdateSucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: InkWell(
        onTap: () {
          Navigator.popUntil(context, (route) => false);
          // Navigation.instance.navigateAndRemoveUntil("/School_login");
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage()),
              (Route<dynamic> route) => route.isFirst);
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 35, left: 25, right: 25),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xff159594),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Done",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffFFFFFF)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 13.89),
                  child: Image.asset("assets/Group 547.png")),
              Text('Stock Updated \n Successfully',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: Color(0xff000000),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
