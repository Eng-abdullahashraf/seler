
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seler/controller/homecontroller.dart';
import 'package:seler/theme/colors.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<homecontroller>(
      init: homecontroller(),
      builder: (controller) => Column(
      children: [
        Container(
          color: Color(0xff058060),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      elevation: controller.overviewnumber==0 ? 20 : 0,
                      backgroundColor: controller.overviewnumber==0 ? Appcolor().thirdcolor : Color(0xff058060),                      ),

                    onPressed: () {
                      controller.changeoverviewrow(0);

                    },
                    child: Text('thesales'.tr,
                        style: TextStyle(color: Colors.white))),
                TextButton(
                    style: TextButton.styleFrom(
                      elevation: controller.overviewnumber==1 ? 20 : 0,
                      backgroundColor: controller.overviewnumber==1 ? Appcolor().thirdcolor : Color(0xff058060),                      ),

                    onPressed: () {
                      controller.changeoverviewrow(1);

                    },
                    child: Text('profits'.tr,
                        style: TextStyle(color: Colors.white))),
                TextButton(
                    style: TextButton.styleFrom(
                      elevation: controller.overviewnumber==2 ? 20 : 0,
                      backgroundColor: controller.overviewnumber==2 ? Appcolor().thirdcolor : Color(0xff058060),                      ),
                    onPressed: () {
                      controller.changeoverviewrow(2);

                    },
                    child: Text('bestsellingpro'.tr,
                        style: TextStyle(color: Colors.white))),
                TextButton(
                    style: TextButton.styleFrom(
                      elevation: controller.overviewnumber==3 ? 20 : 0,
                      backgroundColor: controller.overviewnumber==3 ? Appcolor().thirdcolor : Color(0xff058060),                    ),
                    onPressed: () {
                      controller.changeoverviewrow(3);
                    },
                    child: Text('mostprofpro'.tr,
                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          child: controller.overviewrow[controller.overviewnumber!],
        ),
      ],
    ),);
  }
}
