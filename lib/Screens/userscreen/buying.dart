import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class buying extends StatelessWidget {
  const buying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff058060),
            title: Text('newpurchaseinvoice'.tr,
                style: TextStyle(fontWeight: FontWeight.bold)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('newproduct'.tr,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(left: 130 ),
                      child: TextButton(
                          onPressed: () {}, child: Text('useofbarcode'.tr)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'enternameproanditem'.tr,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
