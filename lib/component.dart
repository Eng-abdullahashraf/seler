import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:seler/controller/homecontroller.dart';

import 'Screens/shops/shopascreen.dart';
import 'Screens/shops/shopdesc.dart';


Widget textwrite(
    {@required Color? Iconcolor,
    @required Color? Fillcolor,
    @required Widget? PrefIcon,
    @required String? LableText,
    @required String? HintText,
    required bool Scure,
    @required double? radius,
    @required TextEditingController? controller}) {
  return Container(
    child: TextField(
        decoration: InputDecoration(
            prefixIconColor: Iconcolor,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(radius!)),
            filled: true,
            fillColor: Fillcolor,
            prefixIcon: PrefIcon,
            labelText: LableText,
            hintText: HintText),
        obscureText: Scure,
        controller: controller),
  );
}


Widget buttons(
  @required String? textbutton,
  @required double? height,
  @required double? width,
  @required double? textfont,
  @required Color? buttoncolor,
  @required Color? textcolor,
  @required VoidCallback? ontap,
  @required double? radius,
) =>
    ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!)),
        minimumSize: Size(width!, height!),
        primary: buttoncolor,
      ),
      child: Text(
        '$textbutton',
        style: TextStyle(color: textcolor, fontSize: textfont,fontFamily: 'ElMessiri'),
      ),
    );

Widget Shops(context, image, name) => InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Shopdescreption()));
      },
      child: Container(
          width: 180,
          decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  child: Image.network('$image')),
              Text('$name')
            ],
          )),
    );


Widget departments(x, s) => Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage('$x'),
        ),
        Text(
          '$s',
          style: TextStyle(fontSize: 20, color: Color(0xFF058060)),
        )
      ],
    );

Widget Cotainer(String x) => ClipRRect(
    borderRadius: BorderRadius.circular(25), child: Image.network('$x'));


Widget department(x, s) => Column(
  children: [
    CircleAvatar(
      radius: 60,
      backgroundImage: NetworkImage('$x'),
    ),
    Text(
      '$s',
      style: TextStyle(fontSize: 20, color: Color(0xFF058060)),
    )
  ],
);

Widget productlist() => Container(
  width: 150,
  height: 180,
  child: Column(
    children: [
      Image.network('https://clipground.com/images/dairy-png-6.jpg'),
      Text('Name of product'),
      Text('price 30\$'),
    ],
  ),
);

Widget productliste() => ListView.separated(
    scrollDirection: Axis.horizontal,
    itemBuilder: (Context, index) => productlist(),
    separatorBuilder: (context, index) => SizedBox(width: 20),
    itemCount: 10);

Widget descreption() => Container(
  child: Text(
    'We are always working to serve our customers with distinction and care. All we care about is the customer\'s comfort, because it is good to serve you, and we are working to make you happy.',
    style: TextStyle(fontSize: 20),
    maxLines: 4,
    overflow: TextOverflow.ellipsis,
  ),
);


Widget overview() => Column(
  children: [
    Container(
      color: Color(0xff058060),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TextButton(
                onPressed: () {


                },
                child: Text(Trans('thesales').tr,
                    style: TextStyle(color: Colors.white))),
            TextButton(
                onPressed: () {

                },
                child: Text(Trans('profits').tr,
                    style: TextStyle(color: Colors.white))),
            TextButton(
                onPressed: () {

                },
                child: Text(Trans('bestsellingpro').tr,
                    style: TextStyle(color: Colors.white))),
            TextButton(
                onPressed: () {

                },
                child: Text(Trans('mostprofpro').tr,
                    style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
    ),
    //controller.overviewrow[0],

    // Container(
    //   child: controller.overviewrow[controller.overviewnumber!],
    // ),
  ],
);


Widget sell() => Container(

decoration: BoxDecoration(color: Colors.black),
  child: Text('data'),
);

Widget salary() => Container(
  color: Color(0xb08ea39c),
  child: Text('data'),
);
Widget prosell() => Container(
  color: Color(0xb08ea39c),
  child: Text('data'),
);
Widget prosala() => Container(
  color: Color(0xb08ea39c),
  child: Text('data'),
);

Widget aggregatedata() => Column(
  children: [
    Container(
      width: double.infinity,
      color: Color(0xff058060),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  //              controller.changegagreedata(0);
                },
                child: Text(Trans('thesales').tr,
                    style: TextStyle(color: Colors.white))),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  //controller.changegagreedata(1);
                },
                child: Text(Trans('purchases').tr,
                    style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    ),
    // Container(
    //  child:  controller.agreedata[ controller.agreedatanumber!],
    // ),
  ],
);

Widget sales() => Container(
  color: Color(0xb08ea39c),
  child: Text('data'),
);
Widget purchases() => Container(
  color: Color(0xb08ea39c),
  child: Text('data'),
);