import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/homeController.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.yellowAccent),
        ),
      ),
    );
  }
}