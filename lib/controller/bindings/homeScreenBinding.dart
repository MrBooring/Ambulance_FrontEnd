import 'package:ambulancewale_driver/controller/controllers/home_screen_controller.dart';
import 'package:get/get.dart';

class Homescreenbinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(SplashScreenController());
    Get.lazyPut<HomeScreenController>(() => HomeScreenController(), fenix: true);
  }
}
