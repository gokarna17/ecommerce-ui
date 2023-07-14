import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/widgets/features_button.dart';
import 'package:emart_app/widgets/home_button.dart';
import 'package:flutter/material.dart';

import '../../consts/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ), //
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: sliedrList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.asset(
                          sliedrList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 10))
                            .make(),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(
                          2,
                          (index) => homeButtons(
                              height: context.screenHeight * 0.1,
                              width: context.screenWidth / 2.5,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todaydeal : flashsale))
                    ],
                  ),
                  //second swipeer
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: secondsliedrList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.asset(
                          sliedrList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 10))
                            .make(),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(
                          3,
                          (index) => homeButtons(
                              height: context.screenHeight * 0.1,
                              width: context.screenWidth / 4,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              title: index == 0
                                  ? topcategories
                                  : index == 1
                                      ? brand
                                      : topSellers))
                    ],
                  ),
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featurescategories.text
                        .color(darkFontGrey)
                        .size(18)
                        .fontFamily(semibold)
                        .make(),
                  ),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featuredButton(
                                        Icon: featuredList1[index],
                                        title: featuredListTitle1[index]),
                                    10.heightBox,
                                    featuredButton(
                                        Icon: featuredList2[index],
                                        title: featuredListTitle2[index])
                                  ],
                                )).toList()
                      ],
                    ),
                  ),
                  20.heightBox,
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(color: redColor),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text
                              .fontFamily(bold)
                              .size(18)
                              .white
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(
                                    6,
                                    (index) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              imgP1,
                                              width: 150,
                                              fit: BoxFit.cover,
                                            ),
                                            10.heightBox,
                                            "Laptop 16/256"
                                                .text
                                                .fontFamily(semibold)
                                                .color(lightGrey)
                                                .make(),
                                            "\$600"
                                                .text
                                                .color(whiteColor)
                                                .fontFamily(bold)
                                                .make()
                                          ],
                                        )
                                            .box
                                            .rounded
                                            .padding(EdgeInsets.all(8))
                                            .rounded
                                            .margin(EdgeInsets.symmetric(
                                                horizontal: 4))
                                            .make())
                              ],
                            ),
                          )
                        ]),
                  ),
                  20.heightBox,
                  //
                  //third swiper
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: sliedrList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.asset(
                          sliedrList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 10))
                            .make(),
                      );
                    },
                  ),
                  20.heightBox,
                  //all products
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 300),
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Spacer(),
                          "Laptop 16/256"
                              .text
                              .fontFamily(semibold)
                              .color(Vx.black)
                              .make(),
                          "\$600".text.color(redColor).fontFamily(bold).make()
                        ],
                      )
                          .box
                          .rounded
                          .padding(EdgeInsets.all(8))
                          .rounded
                          .margin(EdgeInsets.symmetric(horizontal: 12))
                          .make();
                    },
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
