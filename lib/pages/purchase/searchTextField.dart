// ignore_for_file: file_names

import 'package:flutter/material.dart';

class searchTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? labelText;
  final String? hintText;

  final TextInputType? keyboardType;
  final bool obscureText = false;
  final InputBorder inputBorder;

  const searchTextField({
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
  });

  @override
  State<searchTextField> createState() => _searchTextFieldState();
}

class _searchTextFieldState extends State<searchTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.grey,
            )
          ]),
      child: TextFormField(
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
