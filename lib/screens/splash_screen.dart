import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets/applogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  changeScereen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState() {
    changeScereen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            10.heightBox,
            appLogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
