import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seler/Screens/firstscreen.dart';
import 'package:seler/theme/colors.dart';




class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 3),
            () { Get.to(Firstscreen());});
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width:double.infinity,
          color: Appcolor().secondcolor,
          child: Center(
            child: Image(image: AssetImage('images/seller.png')),
          )
        ),
      ),
    );
  }
}
