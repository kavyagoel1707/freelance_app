import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:freelance/service/http_Service.dart';
class ClientRegister extends StatefulWidget {
  @override
  _ClientRegisterState createState() => _ClientRegisterState();
}

class _ClientRegisterState extends State<ClientRegister> {
  late String username;
  late String email;
  late String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[100],
        title:Text('Client Register')
      ),
      //ClientRegister
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child:  Column(
          children: [
            //enterusername
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(hintText: 'Username'),
              onChanged: (value){
                setState(() {
                  username=value;
                });
              }
            ),
            SizedBox(height: 10,),
            TextField(
              //enteremail
                decoration: InputDecoration(hintText: 'Email'),
                onChanged: (value){
                  setState(() {
                    email=value;
                  });
                }
            ),
            SizedBox(height: 10,),
            TextField(
               //enterpassword
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
                onChanged: (value){
                  setState(() {
                    pass=value;
                  });
                }
            ),
            SizedBox(height: 15,),

            InkWell(
              //callingfunctionregister
              onTap: () async{
               await HttpService.register(username, email, pass, context);
              },
              child: Container(
                //register
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Center(
                  child: Text(
                    'Register',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 18),
                  ),
                ),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.indigo[100],
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
