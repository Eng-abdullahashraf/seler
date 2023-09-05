import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seler/component.dart';
import 'package:seler/controller/homecontroller.dart';


class expenses extends StatelessWidget {
   expenses({Key? key}) : super(key: key);


  homecontroller controller=Get.put(homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff058060),
            title: Text(
              'expenses'.tr,
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('exchangeparty'.tr,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 5,
                          left: 5,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'enterexchange'.tr,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('amountspent'.tr,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 5,
                          left: 5,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'enterspentamount'.tr,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('exchangedate'.tr,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      InkWell(
                        onTap: () async {
                          DateTime? newdatetime = await showDatePicker(
                              context: context,
                              initialDate:controller.dateTime,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          controller.changedate(newdatetime);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                      offset: Offset(0.0, 4.0)),
                                  BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 7.0,
                                      offset: Offset(0.0, 2.0)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${controller.dateTime.year} / ${controller.dateTime.month} / ${controller.dateTime.day}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(
                                child: buttons(
                                    'save'.tr ,
                                    50,
                                    double.infinity,
                                    20,
                                    Color(0xff058060),
                                    Color(0xffffffff),
                                        () {},
                                    20)),
                          ],
                        ),
                      ),
                    ]),
              )),
        ));
  }
}
