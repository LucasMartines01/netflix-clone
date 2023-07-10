import 'package:get/get.dart';

import '../domain/entities/user_profile_entity.dart';

class ProfileScreenController extends GetxController {
  //TODO: Implement ProfileScreenController

  RxList<UserProfileEntity> profiles = <UserProfileEntity>[].obs;
  @override
  void onInit() {
    profiles.add(
      UserProfileEntity(
        profileName: 'Lucas',
        imageProfile: 'assets/icons/perfil_logo_blue.png',
      ),
    );
    profiles.add(
      UserProfileEntity(
        profileName: 'Kids',
        imageProfile: 'assets/icons/kids_profile.png',
      ),
    );
    profiles.add(
      UserProfileEntity(
        profileName: 'Adicionar Perfil',
        imageProfile: '',
      ),
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
