import 'package:emart_app/component/details_cart.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/widgets/bgwidgets.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            //edit profile button
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.edit,
                color: whiteColor,
              ),
            ).onTap(() {}),
            Row(
              children: [
                Image.asset(
                  imgProfile2,
                  width: 100,
                  fit: BoxFit.cover,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy User".text.fontFamily(semibold).white.make(),
                    5.heightBox,
                    "admin@gmail.com".text.white.make()
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: whiteColor)),
                    onPressed: () {},
                    child: logout.text.white.make())
              ],
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth / 3.5),
                detailsCard(
                    count: "25",
                    title: "in wishlist",
                    width: context.screenWidth / 3.5),
                detailsCard(
                    count: "07",
                    title: "in your order",
                    width: context.screenWidth / 3.5)
              ],
            ),
            30.heightBox,
            //button section

            ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(
                          profileButtonIcon[index],
                          width: 22,
                        ),
                        title: profileButtonList[index].text.make(),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: lightGrey,
                      );
                    },
                    itemCount: profileButtonList.length)
                .box
                .white
                .padding(EdgeInsets.symmetric(horizontal: 16))
                .shadowSm
                .make()
          ],
        ),
      )),
    ));
  }
}
