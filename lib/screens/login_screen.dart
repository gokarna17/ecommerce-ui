import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/screens/home.dart';
import 'package:emart_app/screens/signup.dart';
import 'package:emart_app/widgets/applogo.dart';
import 'package:emart_app/widgets/bgwidgets.dart';
import 'package:emart_app/widgets/custom_textfield.dart';
import 'package:emart_app/widgets/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
          "Log in to  $appname".text.fontFamily(bold).white.size(18).make(),
          Column(
            children: [
              //customTextField(), customTextField()
              customTextField(
                  controller: emailController, hint: emailHint, title: email),
              20.heightBox,
              customTextField(
                  hint: passwordHint,
                  title: password,
                  controller: passwordController),
              10.heightBox,
              Align(
                alignment: Alignment.centerRight,
                child:
                    TextButton(onPressed: () {}, child: forgetpass.text.make()),
              ),
              5.heightBox,
              ourButton(
                  title: login,
                  color: redColor,
                  textColor: whiteColor,
                  onPressed: () {
                    Get.to(() => Home());
                  }).box.width(context.screenWidth - 50).make(),
              5.heightBox,
              CreateNewAccount.text.black.make(),
              5.heightBox,
              ourButton(
                  title: signup,
                  color: golden,
                  textColor: whiteColor,
                  onPressed: () {
                    Get.to(SignUp());
                  }).box.width(context.screenWidth - 50).make(),
              5.heightBox,
              loginWith.text.white.make(),
              5.heightBox,

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: lightGrey,
                      child: Image.asset(socialIconList[index]),
                    ),
                  ),
                ),
              )
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
