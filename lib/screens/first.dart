import 'package:coffee/Models/coffeeResponse.dart';
import 'package:coffee/screens/second.dart';
import 'package:flutter/material.dart';

import '../Models/coffee.dart';
import '../Widget/widgets.dart';

class MyWidget extends StatelessWidget {
  coffee coff;
  MyWidget(this.coff);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 60, bottom: 20, left: 20, right: 20),
        child: 
   
        Column(
          children: [
           
            buildGridProduct(coff,context),
            
          ],
        ),
      ),
    );
  }



}
