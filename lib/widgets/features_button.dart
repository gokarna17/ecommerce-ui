import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget featuredButton({String? title, Icon}) {
  return Row(
    children: [
      Image.asset(
        Icon,
        width: 40,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  )
      .box
      .white
      .padding(EdgeInsets.all(4))
      .margin(EdgeInsets.all(4))
      .roundedSM
      .outerShadowSm
      .make();
}
