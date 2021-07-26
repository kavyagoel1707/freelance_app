import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:freelance/clientrequests.dart';
class HttpService{
  static final _client = http.Client();
  static var _loginUrl= Uri.parse('http://192.168.29.39:5000/login');
  static var _registerUrl = Uri.parse('http://192.168.29.39:5000/register');
  static var _loginfUrl=Uri.parse('http://192.168.29.39:5000/loginf');
  static var _registerfUrl = Uri.parse('http://192.168.29.39:5000/registerf');
  static login(username,pass,context) async{
    http.Response response =await _client.post(_loginUrl, body:{
      'uname': username,
      'passw': pass,
    });
    print(response.body);
    if (response.statusCode ==200){
      print(jsonDecode(response.body));
      var json = jsonDecode(response.body);
    // ignore: file_names
      if (json['status'] =='Login sucessfully'){
      await EasyLoading.showSuccess(json['status']);
      Navigator.pushReplacement(
        context,MaterialPageRoute(builder: (context) =>ClientRequest())
      );
    }
      else{
      EasyLoading.showError(json['status']);
    }
  }
     else{
    await EasyLoading.showError(
      "Error Code : ${response.statusCode.toString()}");
  }
}
  static register(username, email, pass, context) async {
    http.Response response = await _client.post(_registerUrl, body: {
      'uname': username,
      'mail': email,
      'passw': pass,
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      if (json['status'] == 'username already exist') {
        await EasyLoading.showError(json['status']);
      } else {
        await EasyLoading.showSuccess(json['status']);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ClientRequest()));
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }
  static loginf(usernamef,passf,context) async{
    http.Response response =await _client.post(_loginfUrl, body:{
      'unamef': usernamef,
      'passwf': passf,
    });
    print(response.body);
    if (response.statusCode ==200){
      print(jsonDecode(response.body));
      var json = jsonDecode(response.body);
      // ignore: file_names
      if (json['status'] =='Login sucessfully'){
        await EasyLoading.showSuccess(json['status']);
        Navigator.pushReplacement(
            context,MaterialPageRoute(builder: (context) =>ClientRequest())
        );
      }
      else{
        EasyLoading.showError(json['status']);
      }
    }
    else{
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }
  static registerf(usernamef, emailf, passf, context) async {
    http.Response response = await _client.post(_registerUrl, body: {
      'unamef': usernamef,
      'mailf': emailf,
      'passwf': passf,
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      if (json['status'] == 'username already exist') {
        await EasyLoading.showError(json['status']);
      } else {
        await EasyLoading.showSuccess(json['status']);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ClientRequest()));
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }
}