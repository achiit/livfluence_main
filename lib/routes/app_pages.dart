import 'package:get/get.dart';
import 'package:livfluence_main/bindings/home_binding.dart';
import 'package:livfluence_main/bindings/login_binding.dart';
import 'package:livfluence_main/bindings/welcome_binding.dart';
import 'package:livfluence_main/screens/HomeScreen.dart';
import 'package:livfluence_main/screens/Login_otp.dart';
import 'package:livfluence_main/screens/home_view.dart';
import 'package:livfluence_main/screens/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => WelcomePage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
  ];
} 