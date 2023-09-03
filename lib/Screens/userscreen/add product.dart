import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';


import '../../component.dart';

class addproduct extends StatelessWidget {
  const addproduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff058060),
             elevation: 0,
            title: Text(
              'newproduct'.tr,
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
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
                          child: buttons('addbarcode'.tr, 45, double.infinity, 20, Color(0xff058060), Color(0xffffffff), (){}, 20),
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
                          child: buttons('save'.tr, 45, double.infinity, 20, Color(0xff058060), Color(0xffffffff), (){}, 20),
                        ),
                      ])),
            ),
          ),
        ));
  }
}
