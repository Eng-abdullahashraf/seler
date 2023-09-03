import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seler/Screens/userscreen/inventory.dart';
import 'package:seler/theme/colors.dart';

class userscreen extends StatelessWidget {
  const userscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Appcolor().firstcolor,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                color: Color(0xffffffff),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              child: Image.network(
                'https://papik.pro/uploads/posts/2021-11/1636109504_1-papik-pro-p-logotipi-odezhdi-foto-1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                'treasury'.tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              leading: Icon(Icons.monetization_on_outlined,
                  color: Color(0xff000000)),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'printersettings'.tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              leading: Icon(
                Icons.print,
                color: Color(0xff000000),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'settings'.tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              leading: Icon(Icons.settings, color: Color(0xff000000)),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Color(0xff000000),
            ),
            ListTile(
              title: Text(
                'technicalsupport'.tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              leading: Icon(
                Icons.phone,
                color: Color(0xff000000),
              ),
            ),
            ListTile(
              title: Text(
                "about".tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              leading: Icon(
                Icons.supervised_user_circle_sharp,
                color: Color(0xff000000),
              ),
            ),
            ListTile(
              title: Text(
                'shareapp'.tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              leading: Icon(
                Icons.share,
                color: Color(0xff000000),
              ),
            ),
          ],
        )),
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Get.to(inventorypage());
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              image: AssetImage('images/store.jpeg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Appcolor().gray,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: double.infinity,
                        height: 180,
                        child: Center(
                          child: Text('productstore'.tr,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'ElMessiri')),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              height: 130,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    image: AssetImage('images/seal.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Appcolor().gray,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 130,
                              child: Center(
                                child: Text('buying'.tr,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'ElMessiri')),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            height: 125,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                  image: AssetImage('images/buy.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Appcolor().gray,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 125,
                            child: Center(
                              child: Text('sale'.tr,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'ElMessiri')),
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              height: 130,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    image: AssetImage('images/mord.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Appcolor().gray,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 130,
                              child: Center(
                                child: Text('suppliers'.tr,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'ElMessiri')),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            height: 125,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                  image: AssetImage('images/customer.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Appcolor().gray,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 125,
                            child: Center(
                              child: Text('customers'.tr,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'ElMessiri')),
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              height: 130,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    image: AssetImage('images/fead.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Appcolor().gray,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 130,
                              child: Center(
                                child: Text('expenses'.tr,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'ElMessiri')),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            height: 125,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                  image: AssetImage('images/reports.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Appcolor().gray,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 125,
                            child: Center(
                              child: Text('account'.tr,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'ElMessiri')),
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
