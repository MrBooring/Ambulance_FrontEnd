import 'package:ambulancewale_driver/controller/controllers/authController.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  var isOnline = false.obs;

  @override
  void onInit() {
    AuthController authController = Get.find();
    if (authController.driver!.driverStatus == "OFFLINE") {
      isOnline.value = false;
    }

    super.onInit();
  }

  void changeDriverStatus(status) {
    isOnline.value = !isOnline.value;
  }
}
