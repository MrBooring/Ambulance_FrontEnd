import 'dart:convert';
import 'dart:developer';

import 'package:ambulancewale_driver/controller/controllers/authController.dart';
import 'package:ambulancewale_driver/models/user.dart';
import 'package:get/get.dart';

import '../../utility/constants.dart';

class DriverProvider extends GetConnect {
  Future<Driver?> login(email, pass) async {
    try {
      var jsonArray = {"email": email, "password": pass};
      Response response = await post("${Constants.baseUrl}/auth/driverLogin", jsonEncode(jsonArray), headers: <String, String>{
        'Content-Type': 'application/json',
      });
      log("<============= Log In ==============> \n $jsonArray");
      log(response.bodyString.toString());
      if (response.statusCode == 200) {
        Get.snackbar("Successfully Loggedin", "Welcome");
        log("Log In  Success =======>");

        return Driver.fromJson(response.body);
      } else {
        Get.snackbar("Error", "whoopes! ${response.body['message']}");
        log("Error In Log In =======> ${response.body['message']}");
        return null;
      }
    } catch (e) {
      log("Exception in login =>$e");
      Get.snackbar("Error", e.toString());
      return null;
    }
  }

  Future<Driver?> getDriverProfile() async {
    try {
      AuthController authController = Get.find();
      Response response = await get(
        "${Constants.baseUrl}/driver/getDriverById",
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': "Bearer ${authController.authToken}",
        },
      );
      log("<============= getDriverProfile ==============> \n ");
      log(response.bodyString.toString());
      if (response.statusCode == 200) {
        log("<========= getDriverProfile  Success =======>");

        return Driver.fromJson(response.body);
      } else {
        // Get.snackbar("Error", "whoopes! ${response.body['message']}");
        log("<========= Error In getDriverProfile =======> ${response.body['message']}");
        return null;
      }
    } catch (e) {
      log("Exception in getDriverProfile =>$e");
      Get.snackbar("Error", e.toString());
      return null;
    }
  }
}
