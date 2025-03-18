import 'package:ambulancewale_driver/utility/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controllers/loginController.dart';

class Login extends GetView<Logincontroller> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: Utility.inputDecorationTextAuth(context, controller.emailError),
                inputFormatters: const [],
                onChanged: (value) {
                  controller.email = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: Utility.inputDecorationTextAuth(context, controller.passwordError),
                onChanged: (value) {
                  controller.password = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: const Text(
                  "Login",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
