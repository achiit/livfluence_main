import 'package:get/get.dart';

import '../controllers/homeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}