import 'package:app/routes/pages.dart';
import 'package:get/get.dart';

import '../ui/pages/home.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => Home()),
    // GetPage(name: Routes.LOGIN, page: () => Login()),
    // GetPage(name: Routes.REGISTER, page: () => Register()),
  ];
}
