import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../app/controllers/home_controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'خانه',
      //     textDirection: TextDirection.rtl,
      //     style: TextStyle(color: Colors.black, fontSize: 17),
      //   ),
      //   backgroundColor: Color.fromRGBO(248, 248, 248, 1.0),
      //   shadowColor: Colors.white,
      //   toolbarHeight: 60,
      //   leading: Container(),
      //   actions: [],
      // ),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    // controller.logout();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x80bcbcbc),
                          offset: Offset(0, 2),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'خروج از حساب کاربری',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
