import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'components/profile_card.dart';
import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  ProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/icons/logos_netflix.png',
          width: 130,
        ),
        centerTitle: true,
        toolbarHeight: 100,
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.edit,
              size: 24,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.only(
            left: Get.width * 0.13,
            right: Get.width * 0.13,
            top: Get.height * 0.13,
          ),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: Get.width * 0.02),
              itemCount: controller.profiles.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (controller.profiles[index].profileName ==
                        'Adicionar Perfil') {
                    } else {}
                  },
                  child: ProfileCard(
                    profileImage: controller.profiles[index].imageProfile,
                    profileName: controller.profiles[index].profileName,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
