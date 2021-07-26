import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:freelance/client.dart';
import 'package:freelance/freelancer.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(''),
        backgroundColor: Colors.lightBlue[100],
      ),
      body: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 330,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  //freelanceimageinsert
                  image: DecorationImage(
                    image: AssetImage('assets/freelance.jpeg'),
                    fit:BoxFit.cover
                  )
                ),
              ),
              SizedBox(height: 40,),
              //clientlogin
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClientLogIn()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Center(
                    child: Text('Client Login',style:TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 18,fontStyle: FontStyle.italic),)
                  ),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //FreelancerLogin
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FreelancerLogIn()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Center(
                      child: Text('Freelancer Login',style:TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 18,fontStyle: FontStyle.italic),)
                  ),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                ),
              ),
              SizedBox(height:100),
              //Quoteinsert
              Container(
                height:70,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                color: Colors.lightBlue[100],
                child: Text('When you love and work together, expect a masterpiece.',style:TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),),
              ),
            ],
          )
      ),
    );
  }
}