import 'package:ambulancewale_driver/controller/controllers/authController.dart';
import 'package:ambulancewale_driver/controller/controllers/home_screen_controller.dart';
import 'package:ambulancewale_driver/utility/utility.dart';
import 'package:ambulancewale_driver/view/home/components/driver_status_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreenController> {
  HomeScreen({super.key});

  AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: Utility.inputDecorationText(context).copyWith(
                      prefixIcon: const Icon(
                    Icons.search,
                    size: 22,
                  )),
                ),
              ),
              DriverStatusWidget(controller: controller, authController: authController, size: size),
              Container(
                width: double.infinity,
                height: size.height * .5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
