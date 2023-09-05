


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seler/controller/homecontroller.dart';
import 'package:seler/theme/colors.dart';

class Aggregatedata extends StatelessWidget {
  const Aggregatedata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<homecontroller>(
      init: homecontroller(),
      builder: (controller) => Column(
      children: [
        Container(
          width: double.infinity,
          color: Color(0xff058060),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      elevation: controller.agreedatanumber==0 ? 20 : 0,
                      backgroundColor: controller.agreedatanumber==0 ? Appcolor().thirdcolor : Color(0xff058060),
                    ),
                    onPressed: () {
                      controller.changegagreedata(0);
                    },
                    child: Text(Trans('thesales').tr,
                        style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    elevation: controller.agreedatanumber==1 ? 20 : 0,
                    backgroundColor: controller.agreedatanumber==1 ? Appcolor().thirdcolor : Color(0xff058060),
                  ),
                    onPressed: () {
                      controller.changegagreedata(1);
                    },
                    child: Text(Trans('purchases').tr,
                        style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Container(
         child:  controller.agreedata[ controller.agreedatanumber!],
        ),
      ],
    ),);
  }
}
