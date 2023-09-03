import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seler/Screens/userscreen/add%20product.dart';
import 'package:seler/theme/colors.dart';


import '../../component.dart';

class inventorypage extends StatelessWidget {
  const inventorypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Appcolor().firstcolor,
          title: Text('productstore'.tr),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('findproduct'.tr,style: TextStyle(fontFamily: 'ElMessiri'),),
                SizedBox(
                  height: 15,
                ),
                textwrite(
                  Iconcolor: Appcolor().secondcolor,
                  Fillcolor: Color(0xffffffff),
                  PrefIcon: Icon(Icons.add_shopping_cart),
                  LableText: 'products'.tr,
                  HintText: 'findproduct'.tr,
                  Scure: false,
                  radius: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Appcolor().firstcolor,
                    ),
                    height: 40,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'products'.tr,
                              style: TextStyle(color: Colors.white,fontFamily: 'ElMessiri'),
                            ),
                          ),
                          Text(
                            'quantity'.tr,
                            style: TextStyle(color: Colors.white,fontFamily: 'ElMessiri'),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            'price'.tr,
                            style: TextStyle(color: Colors.white,fontFamily: 'ElMessiri'),
                          ),
                          SizedBox(width: 10,),


                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                FloatingActionButton(
                  backgroundColor: Color(0xff058060),
                  onPressed: () {
                    Get.to(addproduct());
                  },
                  child: Icon(Icons.add),
                ),

              ]),
        ),
      ),
    );
  }
}
