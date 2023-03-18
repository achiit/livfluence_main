import 'package:get/get.dart';
import 'package:livfluence_main/controllers/loginController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}