import 'package:coffee/Models/coffee.dart';
import 'package:coffee/file.dart';
import 'package:coffee/screens/first.dart';
import 'package:coffee/screens/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //coffee co;
  // MyHomePage(this.co);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color.fromARGB(255, 65, 61, 61),
         appBar: AppBar(
           backgroundColor: Color.fromARGB(255, 65, 61, 61),
           elevation: 0,
          title: Center(child: Text('Choose your coffee', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Colors.amber),)),
         ),
        body: 
        ListView.builder(
            itemCount: coffe.length,
            itemBuilder: (context, index) {
              return 
              MyWidget(coffe[index].coff!);
            }));
  }
}
/*
SingleChildScrollView(
        child: Column(
            children: coffe.map((e) {
          return MyWidget(e.coff!);
          print(e.coff);
        }).toList()),
      ),
      */