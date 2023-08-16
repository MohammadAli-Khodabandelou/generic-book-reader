import 'package:app/routes/pages.dart';
import 'package:app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  // configLoading();
  WidgetsFlutterBinding.ensureInitialized();
  Get.changeTheme(
    ThemeData(
      fontFamily: 'iran-yekan',
    ),
  );
  runApp(
    GetMaterialApp(
      title: 'Ecommerce',
      // theme: ThemesApp.light,
      // darkTheme: ThemesApp.dark,
      // themeMode: ThemeControle().ThemeDataGet,
      debugShowCheckedModeBanner: false,
      // initialRoute: FirebaseAuth.instance.currentUser != null ||
      //     GetStorage().read<bool>('auth') == true
      //     ? Approutes.mainscreen
      //     : Approutes.welcome,
      initialRoute: Routes.SPLASH_SCREEN,
      getPages: AppPages.pages,
    ),
  );
}

