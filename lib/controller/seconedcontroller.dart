



import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class seconedcontroller extends GetxController{

  String? barcode;


  Future<void> Scanbarcode() async{

    try{
      barcode=await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'cancel', true, ScanMode.BARCODE);}
        on Exception{
      barcode='failed';
    }


    print(barcode);

  }



}