import 'package:get/get.dart';
import 'package:netflix_clone/app/modules/profile_screen/controllers/profile_screen_controller.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(
      () => SplashScreenController(),
    );
    Get.lazyPut<ProfileScreenController>(
      () => ProfileScreenController(),
    );
  }
}
