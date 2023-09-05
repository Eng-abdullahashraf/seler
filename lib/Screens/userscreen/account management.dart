import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seler/controller/homecontroller.dart';
import 'package:seler/theme/colors.dart';


class accountmanagement extends StatelessWidget {
    accountmanagement({Key? key}) : super(key: key);

  //final homecontroller controller=Get.put(homecontroller());
  // RxInt x=1.obs;
  // RxInt z=0.obs;

   @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff058060),
            title:
            Text('accoutmanagement'.tr, style: TextStyle(color: Colors.white)),
          ),
          body: SingleChildScrollView(

            child: GetBuilder<homecontroller>(
              init: homecontroller(),
              builder: (controller) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Color(0xff058060)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: controller.accountmanagementnumber==0 ? Appcolor().thirdcolor : Color(0xff058060),
                                  ),
                                  onPressed: () {

                                    controller.changeaccountmanage(0);
                                  },
                                  child: Text('overview'.tr,
                                      style: TextStyle(color: Colors.white))),
                            ),
                            Expanded(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: controller.accountmanagementnumber==1 ? Appcolor().thirdcolor : Color(0xff058060),
                                  ),
                                  onPressed: () {
                                    controller.changeaccountmanage(1);
                                  },
                                  child: Text('aggregatedata'.tr,
                                      style:
                                      TextStyle(color: Colors.white))),
                            ),
                          ],
                        )),
                  ),
                  Column(children: [

                   //Text('${controller.accountmanagementnumber}'),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: controller.accountmanagement[controller.accountmanagementnumber!],
                    ),
                  ]),
                ],
              ), )
          ),
        ));
  }
}
