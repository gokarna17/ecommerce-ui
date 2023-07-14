import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets/bgwidgets.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
          child: "Cart is Empty"
              .text
              .white
              .fontFamily(semibold)
              .color(darkFontGrey)
              .make()),
    );
  }
}
