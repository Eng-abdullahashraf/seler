
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component.dart';

class homecontroller extends GetxController{


  List<String> imagenetwork=[
    'https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/Shopping-DSS.jpg',
    'https://www.usmagazine.com/wp-content/uploads/2018/07/GettyImages-867341470.jpg?crop=0px%2C63px%2C2000px%2C1130px&resize=1600%2C900&quality=86&strip=all',
    'https://www.nerdwallet.com/assets/blog/wp-content/uploads/2014/10/shutterstock_126668819.jpg'];

  List<Widget> gene(){
    return imagenetwork.map((item)=>Cotainer(item)).toList();
  }

  List<String> shopsimage=[
    'https://freepngclipart.com/download/logo/50701-jewellery-high-end-brand-watch-rolex-label-logo.png',
    'https://papik.pro/uploads/posts/2021-11/1636109504_1-papik-pro-p-logotipi-odezhdi-foto-1.jpg',
    'https://www.thenextsole.com/storage/Wtj3EvPEnDPpTDBCIgHYrVZllud3oUUfX5UlZ4Xm.png',
    'https://www.eastoffice.fi/wp-content/uploads/2019/12/VALIO_logo_RGB53mm.png',
    'https://i.pinimg.com/originals/fa/e5/a8/fae5a8d1663697fc03153c769972fc88.jpg',
    'https://static.sportmaster.ru/upload/iblock/080/11048120299.jpg',
    'https://leganerd.com/wp-content/uploads/2011/06/B_R_17.jpg',
  ];

  List<String> shopsname=['1','2','1','2','1','2','1','2','3'];


  List<String>  sectionshops=[
    'https://yt3.googleusercontent.com/ytc/AGIKgqMy52sC_BFz553lIqUqT_7YcaWDeHLOwnx-QViz=s900-c-k-c0x00ffffff-no-rj',
    'https://www.sesotec.com/sites/593fc2aac25e5b0640a20ff8/content_entry5996a921c25e5b2c7874b55f/5a7aeba2ffe9ec68e08b01d9/files/molkerei-produkte.jpg',
    'https://img.buzzfeed.com/buzzfeed-static/static/2021-03/4/19/asset/eccb18f0a070/sub-buzz-4659-1614886615-1.jpg',
    'https://cholet.comparezvousmemes.com/modules/ps_imageslider/images/77a9cd4338e30a5e16d5b5f3804e934dd6630c19_ffffzsd.jpg',
  ];

  List<String> sectionname=['Access','Dairy','Clothes','Appliances'];


  List<Widget> shopsinformation = [descreption(),productliste()];
  int? shopsinformationnum = 0;

  void changeshopinformation(d){
    shopsinformationnum=d;
  }
}