import 'package:flutter/material.dart';

void main(){

  // creating object of type container
  Container box =Container(color:Colors.blue);
  runApp(box);
  // same job >> runApp(Container(color:Colors.blue));

  // property inside property inside property...
  Text string=Text("hi salma");
  AppBar bar= AppBar(title: string);
  //Scafolld is a widget to build the basic material design of the page
  Scaffold scaffold=Scaffold(appBar:bar);

  // to run an application and for this reason, this line is written once
  runApp(MaterialApp(home: scaffold));

}


