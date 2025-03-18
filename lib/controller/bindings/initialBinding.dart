import 'package:get/get.dart';

import '../controllers/authController.dart';

class InitialBinder implements Bindings {
  @override
  void dependencies() {
    // Get.put(SplashScreenController());
    // Get.lazyPut<SplashScreenController>(() => SplashScreenController(), fenix: true);
    Get.put<AuthController>(AuthController(), permanent: true);
  }
}
