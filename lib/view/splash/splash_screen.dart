import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../controller/controllers/authController.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AuthController authController = Get.find();

  @override
  void initState() {
    super.initState();
    timmer();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: LottieBuilder.asset("lib/assets/lotties/splash.json"),
      )),
    );
  }

  timmer() async {
    Timer(
      const Duration(seconds: 2),
      () {
        authController.checkLoggedIn();
      },
    );
  }
}
