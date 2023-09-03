import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seler/Screens/splash.dart';
import 'package:seler/translation/locale.dart';

import 'controller/bloc_observer.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      locale: Get.deviceLocale,
      translations: Mylocale(),
      home: Splash(),
    );
  }
}
