import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/screens/categories/item_details.dart';
import 'package:emart_app/widgets/bgwidgets.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';

class CategorisDetails extends StatelessWidget {
  final String? title;
  const CategorisDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        appBar: AppBar(title: title!.text.fontFamily(semibold).make()),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ...List.generate(
                      6,
                      (index) => "Baby clothing"
                          .text
                          .align(TextAlign.center)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .size(12)
                          .makeCentered()
                          .box
                          .white
                          .rounded
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .size(120, 50)
                          .make())
                ]),
              ),
              //items container
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 250,
                      crossAxisCount: 2,
                      mainAxisSpacing: 8),
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
                        .outerShadowSm
                        .padding(EdgeInsets.all(8))
                        .rounded
                        .margin(EdgeInsets.symmetric(horizontal: 12))
                        .make()
                        .onTap(() {
                      Get.to(() => ItemDetails(
                            title: "Dummy Items",
                          ));
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
