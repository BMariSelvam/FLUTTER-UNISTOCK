import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final bool isLoading;
  final Function onTap;
  const SubmitButton({Key? key, required this.isLoading, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading
          ? null
          : () {
        onTap();
      },
      style: ElevatedButton.styleFrom(
        // disabledBackgroundColor: Color(0xff159594),
        backgroundColor: Color(0xff159594),
        minimumSize:Size(width(context), 50),
        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(5), // <-- Radius
        ),
      ),
      child: isLoading
          ? const CircularProgressIndicator()
          :  Text(
        title,
        style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color:  Colors.white,
            ),
      ),
    );
  }
}
