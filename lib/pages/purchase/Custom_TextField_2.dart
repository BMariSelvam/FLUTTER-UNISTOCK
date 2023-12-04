// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextField2 extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? labelText;
  final String? hintText;
  final int? hight;
  final int? maxLength;
  final int? maxLines;

  final TextInputType? keyboardType;
  final bool obscureText = false;
  final InputBorder inputBorder;

  const CustomTextField2({
    super.key,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.labelText,
    this.keyboardType,
    required this.controller,
    obscureText = false,
    required this.inputBorder,
    this.hintText,
    this.hight,
    this.maxLength,
    this.maxLines,
  });

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
        right: 10,
      ),
      child: TextFormField(
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        controller: widget.controller,
        validator: widget.validator,
        style: TextStyle(
          fontSize: 13,
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.grey),
          hintText: widget.hintText,
          border: widget.inputBorder,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 232, 12, 12),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff159594),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding:
              const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 15),
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Color(0xff159594),
            fontSize: 13,
            fontWeight: FontWeight.w900,
          ),
        ),
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
      ),
    );
  }
}
