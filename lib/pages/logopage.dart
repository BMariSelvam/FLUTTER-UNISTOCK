import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoPaGe extends StatefulWidget {
  const LogoPaGe({super.key});

  @override
  State<LogoPaGe> createState() => _LogoPaGeState();
}

class _LogoPaGeState extends State<LogoPaGe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  width: 52.55,
                  height: 57.33,
                  child: Image.asset("assets/logo.png")),
              Text('Logo here',
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
