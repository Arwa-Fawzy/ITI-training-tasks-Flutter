import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home:ToDoList(),
  ));
}
class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList>{
  var l=[];
  String text="";
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title:Text("Today's tasks", style: TextStyle(fontWeight:FontWeight.bold ),), backgroundColor: Color.fromARGB(200, 105, 105, 105),),
      body:Center(child: Form(child:
      ListView.builder(itemCount: l.length, itemBuilder: (BuildContext, int index){
            return Dismissible(key: UniqueKey(), child: Card(color: Color.fromARGB(255, 105, 105, 105),child:
            ListTile(title: Text(l[index], style: TextStyle(color: Colors.white70)),
                     trailing: IconButton(icon: Icon(Icons.check_box_outline_blank, color: Colors.black,),onPressed:(){
                       setState(() {
                           l.removeAt(index);
                       });
                     },splashColor: Colors.black,),)));
    }
    ))), floatingActionButton: FloatingActionButton(
      onPressed: () {
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(title: Text("Add your task"),
            content: TextField(
              onChanged: (String input){
                text=input;
              },
            ),
            actions: <Widget>[
              FlatButton(onPressed: (){
                setState(() {
                  if(text!=""){
                    l.add(text);
                    Navigator.of(context).pop();
                  }else{
                    Navigator.of(context).pop();
                  }
                  // to close after adding a task
                  text="";
                });
              }, child: Text("Add", style: TextStyle(color: Colors.black),))
            ],
          );
        });
      },
      backgroundColor: Colors.orange,
      child: const Icon(Icons.add),
    ),);
  }
}