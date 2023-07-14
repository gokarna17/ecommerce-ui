import 'dart:math';

import 'package:emart_app/consts/consts.dart';

import 'package:emart_app/widgets/applogo.dart';
import 'package:emart_app/widgets/bgwidgets.dart';
import 'package:emart_app/widgets/custom_textfield.dart';
import 'package:emart_app/widgets/our_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController retypepasswordController =
      TextEditingController();

  final TextEditingController nameController = TextEditingController();
  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: Center(
          child: Column(
        children: [
          (context.safePercentHeight * 0.1).heightBox,
          50.heightBox,
          appLogoWidget(),
          10.heightBox,
          "join to   $appname".text.fontFamily(bold).white.size(18).make(),
          Column(
            children: [
              customTextField(
                  title: name, hint: nameHint, controller: nameController),
              20.heightBox,
              //customTextField(), customTextField()
              customTextField(
                  controller: emailController, hint: emailHint, title: email),
              20.heightBox,
              customTextField(
                  hint: passwordHint,
                  title: password,
                  controller: passwordController),
              20.heightBox,
              customTextField(
                  hint: retypepasswordhint,
                  title: retypepassword,
                  controller: retypepasswordController),
              20.heightBox,
              Row(
                children: [
                  Checkbox(
                      checkColor: redColor,
                      fillColor: MaterialStatePropertyAll(golden),
                      value: ischecked,
                      onChanged: (newvalue) {
                        ischecked = newvalue;
                        setState(() {});
                      }),
                  "Agree all the term and condition"
                      .text
                      .fontFamily(bold)
                      .color(redColor)
                      .make()
                ],
              ),

              ourButton(
                      title: login,
                      color: redColor,
                      textColor: whiteColor,
                      onPressed: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              TextButton(
                  onPressed: () {},
                  child: alreadyhaveanaccount.text.fontFamily(semibold).make())
            ],
          )
              .box
              .white
              .shadow
              .rounded
              .width(context.screenWidth - 70)
              .padding(EdgeInsets.all(16))
              .make(),
        ],
      )),
    ));
  }
}
