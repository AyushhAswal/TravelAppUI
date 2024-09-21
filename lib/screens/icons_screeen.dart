import 'package:flutter/material.dart';


class IconsScreeen extends StatefulWidget {
  const IconsScreeen({super.key});

  @override
  State<IconsScreeen> createState() => _IconsScreeenState();
}

class _IconsScreeenState extends State<IconsScreeen> {
  int selectedIconIndex = -1;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [GestureDetector( onTap: (

            ){ setState(() { selectedIconIndex = 0;

            });

        },
          child: GestureDetector(
            child: Container(
                  child: Icon(
                  Icons.airplanemode_on_sharp,
                    color: selectedIconIndex == 0 ? Colors.blue : Colors.grey,

            size: screenWidth * .08,
                  ),
                  height: screenHeight * .07,
                  width: screenWidth * .15,
                  decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
          ),
        ),
                          //For 1st icons  :

          SizedBox(
            width: screenWidth * .08,
          ), GestureDetector( onTap:(){
            setState(() {
              selectedIconIndex = 1;
            });
          },
            child: Container(
                child: Icon(
                Icons.bed_rounded,
                  color: selectedIconIndex == 1 ? Colors.blue : Colors.grey,
                size: screenWidth * .08,
                ),
                height: screenHeight * .07,
                width: screenWidth * .15,
                decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
          ),
          // BedIcons(),


          SizedBox(
            width: screenWidth * .08,
          ), GestureDetector( onTap: (){
            setState(() {
              selectedIconIndex = 2;
            });
          },
            child: Container(
                child: Icon(
                Icons.paragliding,
                  color: selectedIconIndex == 2 ? Colors.blue : Colors.grey,
                size: screenWidth * .08,
                ),
                height: screenHeight * .07,
                width: screenWidth * .15,
                decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
          ),

          SizedBox(
            width: screenWidth * .08,
          ),
          // For 4th icons  :
          GestureDetector(onTap: (){
            setState(() {
              selectedIconIndex = 3;
            });
          },
            child: Container(
            child: Icon(
            Icons.electric_scooter_outlined,
              color: selectedIconIndex == 3 ? Colors.blue : Colors.grey,
                size: screenWidth * .08,
                ),
                height: screenHeight * .07,
                width: screenWidth * .15,
                decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
          ),
        ],
      ),
    );
  }
}
