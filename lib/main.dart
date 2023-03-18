import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livfluence_main/constants.dart';

import 'bindings/home_binding.dart';
import 'routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  HomeBinding().dependencies();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      /*darkTheme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff141A31),
        primaryColorDark: Color(0xff081029),
        //scaffoldBackgroundColor: '#F5F5F5'.toColor(),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
              padding: MaterialStateProperty.all(EdgeInsets.all(14))),
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.yellow),
      ), */
    ),
  );
}