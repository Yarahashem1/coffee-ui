import 'package:coffee/Models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../screens/second.dart';

Widget element(coffee coffId) {
  return Column(children: [
    // Image.network(' '),

    Image(
      image: NetworkImage(coffId.image ?? ' '),
      width: 130,
      height: 130,
    ),
    SizedBox(
      height: 17,
    ),
    Text(
      coffId.name!,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    ),
    SizedBox(
      height: 7,
    ),
    Text(
      coffId.content!,
      style: TextStyle(color: Colors.white54),
    ),
  ]);
}


Widget buildGridProduct(coffee co, context) => Container(
    color: Colors.white,
    child: Row(
      children: [
        Image(
          image: NetworkImage(co.image ?? ' '),
          width: 80,
          height: 100,
          fit: BoxFit.fill,
        ),
        SizedBox(width: 20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SizedBox(
              height: 20,
            ),
            Text(
              co.name!,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              co.content!,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${(co.price!*1)} \$',
               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.amber),
            ),
            
          ],
        ),
        Spacer(),
           IconButton(onPressed: (){ 
            Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => secondScreen(co),
        ),
      );}, icon:  Icon(Icons.arrow_forward_ios,color: Colors.amber,))
      ],
    ));


void showToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 9,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.amber,
      fontSize: 16.0,
    );

// enum
enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }

  return color;
}
