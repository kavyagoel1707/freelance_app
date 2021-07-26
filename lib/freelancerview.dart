
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:freelance/clientrequests.dart';

class ViewRequest extends StatefulWidget {
  const ViewRequest({Key? key}) : super(key: key);
  @override
  _ViewRequestState createState() => _ViewRequestState();
}

class _ViewRequestState extends State<ViewRequest> {
  late List<String> data=[''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client Requests'),
        backgroundColor: Colors.teal[200],
      ),
      body:
      ListView.builder(itemCount: 3,
      itemBuilder: (BuildContext context,int index){
        return Container(
        margin: EdgeInsets.all(4),
        child: Card(
        child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //displayingrequest
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Text(" Domain :"+ data[index][0]),
            ),
             Container(
             margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
             child: Text(" Title :" + data[index][1]),),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Text(" Request : " + data[index][2]),)
          ],
        ),
      ),
    ),

        );
    },
      )
    );
  }
}
