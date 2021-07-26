import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:freelance/clientregister.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:freelance/service/http_Service.dart';
import 'package:freelance/clientrequests.dart';
class ClientLogIn extends StatefulWidget {
  @override
  _ClientLogInState createState() => _ClientLogInState();
}

class _ClientLogInState extends State<ClientLogIn> {
  late String username;
  late String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[100],
        title: Text('Client Login'),
      ),
      body: Container(
        padding:EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          //ClienSignUp
          children: [
            SizedBox(height: 10,),
            TextField(
              //enterusername
              decoration: InputDecoration(hintText: 'Username'),
              onChanged: (value){
                setState(() {
                  username=value;
                });
              },
            ),
            SizedBox(height: 10,),
            TextField(
              //enterpassword
              obscureText: true,
              decoration: InputDecoration(hintText:'Password'),
              onChanged: (value){
                setState(() {
                  pass=value;
                });
              }
            ),
            SizedBox(height: 15,),
            InkWell(
              //callingfunctionlogin
              onTap: () async{
                await HttpService.login(username, pass, context);
              },
              child: Container(
                //loginbutton
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child:  Center(
                  child: Text('Login',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,fontStyle: FontStyle.italic)),
                ),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.indigo[100],
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClientRegister()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Center(
                    child: Text('No Account? Create one!',style:TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 18,fontStyle: FontStyle.italic),)
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
