

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class mylocalcontroller extends GetxController{


  Locale? locale=Get.deviceLocale;

  void changelanguage(){

    if(locale==Locale("ar")){
      locale=Locale("en");
      Get.updateLocale(locale!);
    }
    else{
      locale=Locale("ar");
      Get.updateLocale(locale!);
    }
  }
}