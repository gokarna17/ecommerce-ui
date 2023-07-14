import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controller/home_controller.dart';
import 'package:emart_app/screens/account/account.dart';
import 'package:emart_app/screens/categories/categories.dart';
import 'package:emart_app/screens/cart_screen/cart.dart';
import 'package:emart_app/screens/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 25), label: "Home"),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 25), label: "Categories"),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 25), label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 25), label: "profile")
    ];
    var navBody = [
      HomeScreen(),
      CategoriesScreen(),
      CartScreen(),
      AccountScreen()
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold, color: redColor),
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
          items: navbarItem)),
    );
  }
}
