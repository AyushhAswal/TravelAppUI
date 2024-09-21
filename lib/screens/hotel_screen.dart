import 'package:flutter/material.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(

      child: Container(

        height: screenHeight * .20,
        width: screenWidth * .7,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey,spreadRadius:2,blurRadius:4)
          ],
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(fit:BoxFit.cover,
                image: AssetImage("assets/images/hotel.jpg",)
            )

        ),

      ),
    );
  }
}
