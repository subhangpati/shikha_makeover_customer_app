import 'package:flutter/material.dart';

LinearGradient kGradientStyle = LinearGradient(
  colors: [Color(0xFFFF7D7D), Color(0xFFEEAECA)],
  stops: [0, 1],
  begin: Alignment.center,
);

BoxShadow kBoxShadow = BoxShadow(
  blurRadius: 10.0,
  color: Colors.black26,
  offset: Offset(5.0, 5.0),
);

TextStyle kHeadingStyle = TextStyle(
  fontSize: 18,
  fontFamily: 'inter',
  fontWeight: FontWeight.w600,
);
