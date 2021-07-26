import 'package:flutter/material.dart';
import 'package:freelance/homepage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.black
    ),
    home: HomePage(),
    builder: EasyLoading.init(),
  ));
}


