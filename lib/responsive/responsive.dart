import 'package:flutter/material.dart';

class ResponsiveUtil {
  // Function to calculate responsive width based on screen width
  static double responsiveWidth(BuildContext context, double fraction) {
    // Get screen width
    double screenWidth = MediaQuery.of(context).size.width;
    // Calculate responsive width
    return fraction * screenWidth;
  }

  // Function to calculate responsive height based on screen height
  static double responsiveHeight(BuildContext context, double fraction) {
    // Get screen height
    double screenHeight = MediaQuery.of(context).size.height;
    // Calculate responsive height
    return fraction * screenHeight;
  }
}