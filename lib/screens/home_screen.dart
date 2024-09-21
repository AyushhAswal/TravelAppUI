import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tavel/screens/hotel_screen.dart';

import 'package:tavel/screens/icons_screeen.dart';
import 'package:tavel/widgets/headertext_widget.dart';

import '../widgets/bottom_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search,size: screenWidth*.08,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_rounded,size: screenWidth*.08,), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,size: screenWidth*.08,), label: ''),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header text
            const HeadertextWidget(),

            SizedBox(
              height: screenHeight * .04,
            ),
            //Icons:

            IconsScreeen(),
            SizedBox(
              height: screenHeight * .04,
            ),

            // TOP DESTINATION PART:
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Top destination",
                    style: TextStyle(
                        fontSize: screenWidth * .05,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: screenWidth * .40),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: screenWidth * .04, color: Colors.blue),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * .04,
            ),
            // Images:
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 8)
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenHeight * .20,
                            width: screenWidth * .45,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                      offset: Offset(0, 4)),
                                ],
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/venice.jpg"))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Venice",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: screenWidth * .07,
                                        color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    Text(
                                      "Italy",
                                      style: TextStyle(color: Colors.white70),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: screenHeight * .02),
                          Text(
                            "125 activities ",
                            style: TextStyle(
                                fontSize: screenWidth * .05,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "Enjoy best trips from top \n travel agencies at best prices")
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth * .07),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 8)
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenHeight * .20,
                            width: screenWidth * .45,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                      offset: Offset(0, 4)),
                                ],
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/312fde_18dc4bca311c4280b150511f8bd7fe54~mv2.jpg"))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Paris",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: screenWidth * .07,
                                        color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    Text(
                                      "France",
                                      style: TextStyle(color: Colors.white70),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: screenHeight * .02),
                          Text(
                            "125 activities ",
                            style: TextStyle(
                                fontSize: screenWidth * .05,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "Enjoy best trips from top \n travel agencies at best prices")
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth * .07),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 8)
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenHeight * .20,
                            width: screenWidth * .45,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                      offset: Offset(0, 4)),
                                ],
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/newdelhi.jpg"))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "New Delhi",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: screenWidth * .07,
                                        color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    Text(
                                      "India",
                                      style: TextStyle(color: Colors.white70),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: screenHeight * .02),
                          Text(
                            "125 activities ",
                            style: TextStyle(
                                fontSize: screenWidth * .05,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "Enjoy best trips from top \n travel agencies at best prices")
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth * .07),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 8)
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenHeight * .20,
                            width: screenWidth * .45,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                      offset: Offset(0, 4)),
                                ],
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/cherry-blossom_chureito-pagoda.jpeg"))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Tokyo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: screenWidth * .07,
                                        color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    Text(
                                      "Japan",
                                      style: TextStyle(color: Colors.white70),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: screenHeight * .02),
                          Text(
                            "125 activities ",
                            style: TextStyle(
                                fontSize: screenWidth * .05,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "Enjoy best trips from top \n travel agencies at best prices")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .04,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Exclusive Hotels",
                    style: TextStyle(
                        fontSize: screenWidth * .05,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: screenWidth * .38),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: screenWidth * .04, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            HotelScreen(),

            // BottomWidget ()
          ],
        ),
      )),
    );
  }
}
