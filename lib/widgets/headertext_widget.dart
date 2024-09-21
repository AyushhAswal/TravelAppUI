import 'package:flutter/material.dart';

class HeadertextWidget extends StatefulWidget {
  const HeadertextWidget({super.key});

  @override
  State<HeadertextWidget> createState() => _HeadertextWidgetState();
}

class _HeadertextWidgetState extends State<HeadertextWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * .06),
      child: Text(
        "What you would like \n to find ?",
        style: TextStyle(
            fontSize: screenWidth * .075, fontWeight: FontWeight.bold),
      ),
    );
  }
}
