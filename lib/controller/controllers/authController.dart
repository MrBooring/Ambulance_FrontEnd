import 'dart:developer';

import 'package:ambulancewale_driver/controller/providers/driver_provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../models/user.dart';

class AuthController extends GetxController {
  Driver? driver;
  var authToken = "";
  var driverId = "";
  var isUserLocallySaved = false.obs;

  Future fetchStoredValues() async {
    FlutterSecureStorage secureStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );
    authToken = await secureStorage.read(key: 'authToken') ?? '';
    driverId = await secureStorage.read(key: 'driverId') ?? '';
    log(
      "local saved =>  \n auth token -$authToken \n uuid.value-$driverId",
      name: "fetchStoredValues",
    );
    if (authToken != '') {
      isUserLocallySaved.value = true;
    } else {
      isUserLocallySaved.value = false;
    }
  }

  Future<void> setValues(String setauthToken, String id) async {
    authToken = setauthToken;
    driverId = id;

    rememberMe(setauthToken, id);
  }

  rememberMe(String setauthToken, String id) async {
    try {
      const FlutterSecureStorage secureStorage = FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      );
      await secureStorage.write(key: 'authToken', value: setauthToken);
      await secureStorage.write(key: 'driverId', value: id);
      isUserLocallySaved.value = true;
      checkLoggedIn();
    } catch (e) {
      log("Error while Storing locally => ${e.toString()}");
    }
  }

  void checkLoggedIn() async {
    await fetchStoredValues();

    if (isUserLocallySaved.value == true) {
      // await fetchUserProfile();
      log("auth key ${authToken}");
      await getDriverProfile();
      Get.offAllNamed('/homeScreen');
    } else {
      Get.offAllNamed('/login');
    }
  }

  getDriverProfile() async {
    try {
      await DriverProvider().getDriverProfile().then(
        (value) {
          if (value != null) {
            driver = value;

            log("Driver details =" + value.toString());
          }
        },
      );
    } catch (e) {
      log("Error while Storing locally => ${e.toString()}");
    }
  }
}
