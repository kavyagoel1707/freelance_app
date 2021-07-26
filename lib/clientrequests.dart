import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Todo{
  final String title;
  final String request;
  final String domain;
  const Todo(this.title,this.request,this.domain);
}
class ClientRequest extends StatefulWidget {
  const ClientRequest({Key? key}) : super(key: key);
  @override
  _ClientRequestState createState() => _ClientRequestState();
}

class _ClientRequestState extends State<ClientRequest> {
  TextEditingController title= new TextEditingController();
  TextEditingController request=new TextEditingController();
  TextEditingController domain=new TextEditingController();

  pass(String title , String request){
  Map data={"Domain": domain,"Title": title,"Request": request};}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.indigo[100],
      title: Text('Make Request'),
    ),
      body:Container(
        //askinfrequest
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20,),
          TextField(
            //domain
            decoration: InputDecoration(hintText: 'Enter Domain'),
            controller: domain,
          ),
          SizedBox(height: 20,),
          TextField(
            //title
              decoration: InputDecoration(hintText: 'Enter Titile'),
              controller: title,
          ),
          SizedBox(height: 20,),
          TextField(
            //request
            decoration: InputDecoration(hintText: 'Enter Request'),
            controller: request,
          ),
          SizedBox(height: 20,),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black12)
            ),
            onPressed: () {
               showDialog(
               context: context,
               builder: (context) {
                 return AlertDialog(
                     // Retrieve the text the user has entered by using the
                     // TextEditingController.
                     content: Text('Request Sent Successfully!',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                 );
               }
                 );
            },
            child: Text('Done',style:TextStyle(fontSize: 20,color: Colors.indigo[200])),
          ),
          SizedBox(height: 20,),
          //domains
          Text('[Domains: Coding,Machine Learning,App Development,Web Development,Electronics,Graphics]',style: TextStyle(color: Colors.black54,fontSize: 12,fontStyle: FontStyle.italic))
        ],
      ),
      )
    );
  }
}
