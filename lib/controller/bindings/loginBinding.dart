import 'package:ambulancewale_driver/controller/controllers/loginController.dart';
import 'package:get/get.dart';

class LoginBinder implements Bindings {
  @override
  void dependencies() {
    // Get.put(SplashScreenController());
    Get.lazyPut<Logincontroller>(() => Logincontroller(), fenix: true);
  }
}
