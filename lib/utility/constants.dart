import 'package:flutter/material.dart';

final class Constants {
  // App-related constants
  static const String appName = 'MyApp';
  static const double defaultPadding = 10.0;
  static const double defaultRadius = 10;

  //api
  static const String baseUrl = "http://172.20.10.3:8080";

  // Colors
  static const Color primaryColor = Color.fromARGB(255, 41, 88, 159);
  static const Color secondaryColor = Color(0xFFFFA726); //Color(0xFFFFC107)
  static const Color backgroundColor = Color(0xFFebedf8);

  static const Gradient blueGrad = LinearGradient(
    colors: [
      Color(0xFF3550DC),
      Color(0xFF27E9F7),
    ],
  );

  static const projectStatus = [
    "RUNNING",
    "CREATED",
    "CLOSED",
    "COMPLETED",
    "ONHOLD",
  ];
}
