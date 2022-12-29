import 'package:flutter/material.dart';

// rgba(59, 175, 191, 1)
// Color(#3bafbf)
const Color primaryColor = Color.fromRGBO(59, 175, 191, 1);

// rgba(54, 151, 195, 1)
// Color(#3697c3)
const Color secondaryColor = Color.fromRGBO(54, 151, 195, 1);

// rgba(50,126,199,1)
// Color(#327ec7)
const Color accentColor = Color.fromRGBO(50, 126, 199, 1);

// rgba(116, 183, 27, 1)
const Color textSecondaryColor = Color.fromRGBO(116, 183, 27, 1);

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
