import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seler/controller/seconedcontroller.dart';
import 'package:seler/theme/colors.dart';


import '../../component.dart';

class addproduct extends StatelessWidget {
   addproduct({Key? key}) : super(key: key);

  var barcodevalue=TextEditingController();
  String? x;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Appcolor().firstcolor,
             elevation: 0,
            title: Text(
              'newproduct'.tr,
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: GetBuilder<seconedcontroller>(
              init: seconedcontroller(),
              builder: (controller) => Padding(
              padding: const EdgeInsets.only(right: 8,left: 8),
              child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('productname'.tr,
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ElMessiri')),
                        ),
                        SizedBox(),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 5,
                            left: 5,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'enter product name'.tr,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('barcode'.tr,
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ElMessiri')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: buttons('addbarcode'.tr, 45, double.infinity, 20, Appcolor().firstcolor, Color(0xffffffff), () async {
                            controller.Scanbarcode();

                          }, 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5),
                          child: Text('${controller.barcode}'),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('quantity'.tr,
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ElMessiri')),
                        ),
                        SizedBox(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'quantity'.tr,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('purchasingprice'.tr,
                                    style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ElMessiri')),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('sellingprice'.tr,
                                    style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ElMessiri')),
                              ),
                            ),
                          ],
                        ),
                        Row(children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'purchasingprice'.tr,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'sellingprice'.tr,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))),
                              ),
                            ),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('description'.tr,
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ElMessiri')),
                        ),
                        SizedBox(),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 5,
                            left: 5,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'description'.tr,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('category'.tr,
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ElMessiri')),
                        ),
                        SizedBox(),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 5,
                            left: 5,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'category'.tr,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: buttons('save'.tr, 45, double.infinity, 20, Appcolor().firstcolor, Color(0xffffffff), (){}, 20),
                        ),
                      ])),
            ),),
          ),
        ));
  }
}
