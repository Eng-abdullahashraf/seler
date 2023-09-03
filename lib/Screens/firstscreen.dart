import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seler/Screens/Login.dart';
import 'package:seler/Screens/shops/shopascreen.dart';
import 'package:seler/theme/colors.dart';
import 'package:seler/translation/localcontroller.dart';

import '../component.dart';


class Firstscreen extends StatelessWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mylocalcontroller translate=Get.put(mylocalcontroller());
    return SafeArea(
      child:Scaffold(
        body: Container(
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/back.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0x889EB89C)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            GestureDetector(
                              child: Icon(
                                Icons.language,
                                color: Appcolor().firstcolor,
                                size: 35,
                              ),
                              onTap: () {
                                translate.changelanguage();
                              },
                            ),
                            Expanded(child: SizedBox()),
                            GestureDetector(
                              child: Icon(
                                Icons.login_outlined,
                                color: Appcolor().firstcolor,
                                size: 35,
                              ),
                              onTap: () {
                                Get.to(Login());
                              },
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 35),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                                    child: Image(
                                        image: AssetImage(
                                            'images/seller.png'))),
                                SizedBox(
                                  height: 50,
                                ),

                                buttons(
                                    'shopping'.tr,
                                    55,
                                    200,
                                    25,
                                    Color(0xffdff2ea),
                                    Color(0xff000000),
                                        () {
                                      Get.to(Shoppingscreen());
                                    },
                                    15),
                              ],
                            ),
                          )),
                    ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
