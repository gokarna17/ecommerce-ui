import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget detailsCard({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "$count".text.fontFamily(bold).color(darkFontGrey).size(17).make(),
      5.heightBox,
      "$title".text.fontFamily(bold).color(darkFontGrey).make()
    ],
  ).box.width(width).height(60).rounded.white.padding(EdgeInsets.all(4)).make();
}
