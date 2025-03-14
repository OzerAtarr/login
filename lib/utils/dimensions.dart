import 'package:flutter/cupertino.dart';

class Dimensions {
  late double height;
  late double width;
  late double viewInset;
  late double screenWidth;
  late double screenHeight;

  late double defaultLoginSize;
  late double height40;
  late double height50;
  late double height100;
  late double height200;
  late double height250;
  late double width250;
  late double height360;
  late double height420;
  late double height600;

  // Constructor that initializes the values
  Dimensions(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    viewInset = MediaQuery.of(context).viewInsets.bottom;

    // Call methods for calculations
    _initializeHeightValues();
  }

  // Private method to initialize height-related values
  void _initializeHeightValues() {
    screenWidth = width;
    screenHeight = height;
    height40 = height / 24.34;
    height50 = height / 19.47;
    height100 = height / 9.76;
    height200 = height / 4.87;
    height250 = height / 3.90;
    width250 = width / 2.28;
    height360 = height / 2.71;
    height420 = height / 2.31;
    height600 = height / 1.63;
    defaultLoginSize = height - (height * 0.2);
  }
}
