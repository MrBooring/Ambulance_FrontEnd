import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriverStatusWidget extends StatelessWidget {
  final controller;
  final authController;
  final Size size;

  const DriverStatusWidget({
    Key? key,
    required this.controller,
    required this.authController,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedCrossFade(
          duration: Duration(milliseconds: 500),
          firstChild: _offlineStatus(context, size, controller, authController),
          secondChild: _onlineStatus(controller, context),
          crossFadeState: controller.isOnline.value ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        ));
  }

  Widget _offlineStatus(BuildContext context, Size size, controller, authController) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hii, ${authController.driver!.user.name}"),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              controller.changeDriverStatus(true);
            },
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(32, 246, 73, 60),
              maxRadius: size.width * .19,
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(73, 219, 63, 52),
                maxRadius: size.width * .16,
                child: CircleAvatar(
                  maxRadius: size.width * .13,
                  backgroundColor: Color.fromARGB(255, 200, 54, 44),
                  child: Text(
                    "Offline",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: .5,
                        ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Avoid sudden shrinking
        ],
      ),
    );
  }

  Widget _onlineStatus(controller, context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("StandBy while we find a trip for you"),
              Switch(
                value: controller.isOnline.value,
                activeColor: Colors.green,
                onChanged: (value) {
                  controller.changeDriverStatus(value);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
