import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/screens/categories/categories_details.dart';
import 'package:emart_app/widgets/bgwidgets.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: categories.text.white.fontFamily(semibold).make(),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 200),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  categoriesImage[index],
                  height: 100,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Spacer(),
                categoriesList[index]
                    .text
                    .size(18)
                    .color(darkFontGrey)
                    .align(TextAlign.center)
                    .make(),
                30.heightBox
              ],
            )
                .box
                .white
                .rounded
                .clip(Clip.antiAlias)
                .outerShadowSm
                .make()
                .onTap(() {
              Get.to(() => CategorisDetails(title: categoriesList[index]));
            });
          },
        ),
      ),
    ));
  }
}
