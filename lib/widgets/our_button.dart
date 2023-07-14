import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton({onPressed, color, textColor, String? title}) {
  return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: color, padding: EdgeInsets.all(12)),
      onPressed: onPressed,
      child: title?.text.color(textColor).fontFamily(bold).make());
}
//      child: title.color(textColor).fontFamily(bold).make());

