import 'package:flutter/material.dart';
import 'package:freelance/service/http_Service.dart';
import 'package:freelance/service/http_Service.dart';
class FreelancerRegister extends StatefulWidget {
  @override
  _FreelancerRegisterState createState() => _FreelancerRegisterState();
}

class _FreelancerRegisterState extends State<FreelancerRegister> {
  late String username1='';
  late String email1='';
  late String password1='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[100],
          title:Text('Freelancer Register')
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child:  Column(
          children: [
            TextField(
              //enterusername
                decoration: InputDecoration(hintText: 'Username'),
                onChanged: (value){
                  setState(() {
                    username1=value;
                  });
                }
            ),
            SizedBox(height: 10,),
            TextField(
              //enteremail
                decoration: InputDecoration(hintText: 'Email'),
                onChanged: (value){
                  setState(() {
                    email1=value;
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
                    password1=value;
                  });
                }
            ),
            SizedBox(height: 15,),
            InkWell(
              //callingregisterf
              onTap: () async{
                await HttpService.registerf(username1, email1, password1, context);
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
                    color: Colors.teal[100],
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
              ),
            )
          ],
        ),
      ),
    );;
  }
}
