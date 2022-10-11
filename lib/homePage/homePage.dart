import 'package:flutter/material.dart';
import 'package:uplabslesson2/const/AppColor.dart';
import 'package:uplabslesson2/const/AppPath.dart';
import 'package:kartal/kartal.dart';
import 'package:uplabslesson2/const/AppSize.dart';
import 'package:uplabslesson2/const/AppText.dart';
import 'package:uplabslesson2/homePage/widget/customCard.dart';
import 'package:uplabslesson2/homePage/widget/customText.dart';

import 'widget/customCatagoryContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(width: context.width * 0.5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomCardWidget(),
            Text(
              AppText.appBarTitle,
              style: TextStyle(color: AppColor.appBarTitleColor),
            ),
            CircleAvatar(
              backgroundImage: ExactAssetImage(AppPath.profilImage),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: AppSize.paddingAppPage,
            child: Container(
              height: 200,
              width: 350,
              decoration: const BoxDecoration(
                color: AppColor.boxDecorationColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(AppSize.boxdecorationBorderRadius),
                ),
              ),
              child: Padding(
                padding: AppSize.paddingBoxDecoration,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      textColor: AppColor.appTextColor,
                      text: AppText.yourBalancetext,
                      fontSize: AppSize.yourBalanceText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          textColor: AppColor.appTextColor,
                          text: AppText.Paytext,
                          fontSize: AppSize.payeText,
                          fontWeight: FontWeight.bold,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              color: Colors.black26, shape: BoxShape.circle),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          textColor: AppColor.appTextColor,
                          text: "1010",
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        CustomText(
                          textColor: AppColor.appTextColor,
                          text: "1996",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          textColor: AppColor.appTextColor,
                          text: "1020",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          textColor: AppColor.appTextColor,
                          text: "1997",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: AppSize.paddingAppPage,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const CustomCatagoryContainer(
                      decorationColor: AppColor.transferButtonColor,
                      icon: AppPath.tarnsferButtonIcon,
                    ),
                    AppSize.sizedBox,
                    CustomText(
                      text: AppText.catagoryTransfetText,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const CustomCatagoryContainer(
                      decorationColor: AppColor.topUpButtonColor,
                      icon: AppPath.topUpButtonIcon,
                    ),
                    AppSize.sizedBox,
                    CustomText(
                      text: AppText.catagoryTopUpText,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const CustomCatagoryContainer(
                      decorationColor: AppColor.requistButtonColor,
                      icon: AppPath.requistButtonIcon,
                    ),
                    AppSize.sizedBox,
                    CustomText(
                      text: AppText.catagoryRequistText,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const CustomCatagoryContainer(
                      decorationColor: AppColor.moreButtonColor,
                      icon: AppPath.moreButtonIcon,
                    ),
                    AppSize.sizedBox,
                    CustomText(
                      text: AppText.catagoryMoreText,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: const Color(0XFFf4f4f4),
                        height: 10,
                        width: 50,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: AppText.historyText,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(text: AppText.seeAll),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.black12,
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  "assets/icons8-spotify-50.png",
                                  scale: 1.5,
                                ),
                              ),
                            ],
                          ),
                          const Text("-\$10.30"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
