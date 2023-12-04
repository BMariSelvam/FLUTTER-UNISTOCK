// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomTab extends StatefulWidget {
  final tab;
  final ValueChanged valueChanged;

  const BottomTab({Key? key, required this.valueChanged, this.tab})
      : super(key: key);

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(162, 162, 162, 0.15),
          blurRadius: 10,
        )
      ]),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: widget.tab,
        onTap: (value) {
          setState(() {
            widget.valueChanged(value);
          });
        },
        items: [
          BottomNavigationBarItem(
              label:  widget.tab == 0?'Home':"",
              icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: widget.tab == 0
                      ? Image(
                          image: AssetImage("assets/Vector.png"),
                          height: 24,
                          width: 24,
                        )
                      : Image(
                          image: AssetImage("assets/Vector1.png"),
                          height: 24,
                          width: 24,
                        ))),
          BottomNavigationBarItem(
              label:  widget.tab == 1?'Stock':"",
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: widget.tab == 1
                    ? Image(
                        image: AssetImage("assets/Vector (4).png"),
                        height: 24,
                        width: 24,
                      )
                    : Image(
                        image: AssetImage("assets/Vector (1).png"),
                        height: 24,
                        width: 24,
                      ),
              )),
          BottomNavigationBarItem(
              label: widget.tab == 2?'Product':"",
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: widget.tab == 2
                    ? Image(
                        image: AssetImage("assets/Subtract1.png"),
                        height: 24,
                        width: 24)
                    : Image(
                        image: AssetImage("assets/Subtract.png"),
                        height: 24,
                        width: 24),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: widget.tab == 3
                      ? Image(
                          image: AssetImage("assets/Vector (2).png"),
                          height: 24,
                          width: 24)
                      : Image(
                          image: AssetImage("assets/Vector (2).png"),
                          height: 24,
                          width: 24))),
        ],
        
        selectedLabelStyle: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color(0xff159594)),
        unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
