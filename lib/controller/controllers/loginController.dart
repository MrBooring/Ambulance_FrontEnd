import 'dart:developer';

import 'package:ambulancewale_driver/controller/controllers/authController.dart';
import 'package:ambulancewale_driver/controller/providers/driver_provider.dart';
import 'package:get/get.dart';

class Logincontroller extends GetxController {
  var email = "";
  var password = "";

  var emailError = "".obs;
  var passwordError = "".obs;

  login() async {
    try {
      await DriverProvider().login(email, password).then(
        (driver) {
          log("login => ${driver}");
          if (driver != null) {
            AuthController authController = Get.find();
            authController.setValues(driver.user.token, driver.driverId.toString());
            authController.update();
          }
        },
      );
    } catch (e) {
      log("Exception in login \n ${e}");
    }
  }
}
