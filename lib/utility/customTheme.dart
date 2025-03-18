import 'package:flutter/material.dart';

import 'constants.dart';

final class CustomTheme {
  static final lightTheme = ThemeData(
      useMaterial3: true,
      iconTheme: IconThemeData(size: 25),
      primaryColor: Constants.primaryColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Constants.primaryColor,
        primaryContainer: Constants.primaryColor.withOpacity(.3),
      ),
      scaffoldBackgroundColor: Constants.backgroundColor,
      appBarTheme: const AppBarTheme(backgroundColor: Constants.backgroundColor),
      textTheme: const TextTheme(
        bodySmall: TextStyle(color: Colors.black, fontFamily: "Merriweather", fontWeight: FontWeight.bold
            // fontSize: textaspect * 12
            ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        bodyLarge: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        labelSmall: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        labelMedium: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        labelLarge: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        titleMedium: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        titleLarge: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        displaySmall: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        displayMedium: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        displayLarge: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        headlineSmall: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Merriweather",
        ),
        headlineLarge: TextStyle(
          color: Colors.black,
          fontFamily: "Merriweather",
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(Constants.defaultRadius)),
        focusedBorder: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Constants.primaryColor.withOpacity(.3),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Constants.primaryColor,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 45),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      chipTheme: const ChipThemeData(
        shape: StadiumBorder(),
      ),
      listTileTheme: ListTileThemeData(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(Constants.defaultRadius),
        ),
      ));
}
