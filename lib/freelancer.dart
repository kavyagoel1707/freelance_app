import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:freelance/freelancerregister.dart';
import 'package:freelance/freelancerview.dart';
import 'package:freelance/clientrequests.dart';
import 'package:freelance/service/http_Service.dart';
class FreelancerLogIn extends StatefulWidget {
  @override
  _FreelancerLogInState createState() => _FreelancerLogInState();
}

class _FreelancerLogInState extends State<FreelancerLogIn> {
  late String username1='';
  late String password1=' ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: Text('Freelancer Login'),
      ),
      body: Container(
          padding:EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextField(
                //enterusername
                decoration: InputDecoration(hintText: 'Username'),
                onChanged: (value){
                  setState(() {
                    username1=value;
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
                      password1=value;
                    });
                  }
              ),
              SizedBox(height: 15,),

              InkWell(
                onTap: () async{
                  //callingfunctionloginf
                  await HttpService.loginf(username1, password1, context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child:  Center(
                    child: Text('Login',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18,fontStyle: FontStyle.italic)),
                  ),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.teal[100],
                      borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FreelancerRegister()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Center(
                      child: Text('No Account? Create one!',style:TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 18,fontStyle: FontStyle.italic),)
                  ),
                ),
              ),

            ],
          )
      ),
    );

  }
}