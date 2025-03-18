import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/bindings/initialBinding.dart';
import 'utility/customTheme.dart';
import 'utility/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.pages,
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinder(),
      theme: CustomTheme.lightTheme,
    );
  }
}
