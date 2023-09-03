import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../controller/homecontroller.dart';


class Shopdescreption extends StatelessWidget {
   Shopdescreption({Key? key}) : super(key: key);


  homecontroller controller=Get.put(homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: 320,
                    decoration: BoxDecoration(
                        color: Color(0xFF058060),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(70),
                            bottomLeft: Radius.circular(70))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15),
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back,color: Color(0xffffffff),)),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image(image: AssetImage('images/im.jpg'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          'Name',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ]),
                Row(
                  children: [
                    Expanded(
                        child: InkWell(
                          onTap: () {
                           controller.changeshopinformation(0);
                          },
                          child: Center(
                              child: Text(
                                'descreption'.tr,
                                style:
                                TextStyle(fontSize: 20, color: Color(0xff403e3e)),
                              )),
                        )),
                    Expanded(child: InkWell(
                      onTap: () {
                        controller.changeshopinformation(1);
                      },
                      child: Center(child: Text('products'.tr,
                        style:
                        TextStyle(fontSize: 20, color: Color(0xff403e3e)),)),
                    )),
                  ],
                ),
                Divider(thickness:3 ,color: Colors.grey,),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: controller.shopsinformation[controller.shopsinformationnum!],),
                Divider(thickness:3 ,color: Colors.grey,),

              ],
            )),
      ),
    );
  }
}
