import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/app/modules/profile_screen/views/profile_screen_view.dart';
import 'package:page_transition/page_transition.dart';
import '../../home/views/home_view.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1500,
      splash: Image.asset('assets/icons/logos_netflix.png'),
      nextScreen: ProfileScreenView(),
      backgroundColor: Colors.black,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}
