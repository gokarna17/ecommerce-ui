import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/widgets/our_button.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.make(),
        iconTheme: IconThemeData(color: darkFontGrey),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                color: darkFontGrey,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  VxSwiper.builder(
                    autoPlay: true,
                    height: 350,
                    aspectRatio: 16 / 9,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        imgFc5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  10.heightBox,
                  title!.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    // maxRating: 5,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\$3000"
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Seller".text.white.fontFamily(semibold).make(),
                            5.heightBox,
                            "In House Brands"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .size(16)
                                .make()
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_outlined,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  )
                      .box
                      .padding(EdgeInsets.symmetric(horizontal: 16))
                      .height(60)
                      .color(textfieldGrey)
                      .make(),
                  20.heightBox,
                  //Color selection
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              ...List.generate(
                                  3,
                                  (index) => VxBox()
                                      .size(40, 40)
                                      .roundedFull
                                      .color(Vx.randomPrimaryColor)
                                      .margin(
                                          EdgeInsets.symmetric(horizontal: 6))
                                      .make()),
                            ],
                          ),
                        ],
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Qty".text.color(textfieldGrey).make(),
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.remove)),
                          "0"
                              .text
                              .size(16)
                              .color(darkFontGrey)
                              .fontFamily(bold)
                              .make(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                          10.heightBox,
                          "(0 available)".text.color(textfieldGrey).make()
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: " Total Price:"
                                .text
                                .color(textfieldGrey)
                                .make(),
                          ),
                          "\$ 46"
                              .text
                              .size(22)
                              .color(redColor)
                              .fontFamily(bold)
                              .make(),
                        ],
                      ),
                    ],
                  ).box.white.padding(EdgeInsets.all(8)).shadowSm.make(),
                  //Description section
                  "Description"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  "This is a dummy item and dummy description here  aa;osjaoijdaoa skos o saofla;o ao a laojlas;loas fo alfsdo a f;aj"
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  //buttom section
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ...List.generate(
                          itemDetailButtonsList.length,
                          (index) => ListTile(
                                title: itemDetailButtonsList[index]
                                    .text
                                    .white
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .make(),
                                trailing: Icon(Icons.arrow_forward),
                              ))
                    ],
                  ),
                  productsyoumaylike.text
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            6,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        .color(Vx.black)
                                        .make(),
                                    "\$600"
                                        .text
                                        .color(redColor)
                                        .fontFamily(bold)
                                        .make()
                                  ],
                                )
                                    .box
                                    .rounded
                                    .padding(EdgeInsets.all(8))
                                    .rounded
                                    .margin(EdgeInsets.symmetric(horizontal: 4))
                                    .make())
                      ],
                    ),
                  )
                ])),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
                color: redColor,
                onPressed: () {},
                textColor: whiteColor,
                title: "Add to cart"),
          )
        ],
      ),
    );
  }
}
