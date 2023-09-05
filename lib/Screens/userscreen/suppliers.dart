import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seler/Screens/userscreen/add%20suppliers.dart';
import 'package:seler/component.dart';


class suppliers extends StatelessWidget {
  const suppliers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff058060),
          title: Text('suppliers'.tr),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('findsuppliers'.tr),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        textwrite(
                          Iconcolor: Color(0xffbcc1c6),
                          Fillcolor: Color(0xffffffff),
                          LableText: 'suppliers'.tr,
                          HintText: 'entersuppliersname'.tr,
                          Scure: false,
                          radius: 25,
                        ),
                      ],
                    ),
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
                        color: Color(0xff058060),
                      ),
                      height: 40,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'suppliers'.tr,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 50 ),
                                child: Text(
                                  'suppliernumber'.tr,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FloatingActionButton(
                            backgroundColor: Color(0xff058060),
                            onPressed: () {
                              Get.to(addsuppliers());
                            },
                            child: Icon(Icons.add),
                          ),
                        )),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
