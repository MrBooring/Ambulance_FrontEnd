import 'package:ambulancewale_driver/controller/bindings/homeScreenBinding.dart';
import 'package:ambulancewale_driver/controller/bindings/initialBinding.dart';
import 'package:ambulancewale_driver/controller/bindings/loginBinding.dart';
import 'package:ambulancewale_driver/view/auth/login.dart';
import 'package:ambulancewale_driver/view/home/home_screen.dart';
import 'package:ambulancewale_driver/view/splash/splash_screen.dart';
import 'package:get/get.dart';

final class AppRoutes {
  static final pages = [
    GetPage(
      name: "/",
      page: () => const SplashScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: "/login",
      page: () => const Login(),
      binding: LoginBinder(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: "/homeScreen",
      page: () => HomeScreen(),
      binding: Homescreenbinding(),
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
