import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:livfluence_main/controllers/homeController.dart';

class WelcomeController extends GetxController {
  HomeController homeController = Get.find<HomeController>();
  late User user;
  @override
  void onInit() async {
    super.onInit();
    user = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void logout() async {
    await homeController.googleSign.disconnect();
    await homeController.firebaseAuth.signOut();
  }
}
