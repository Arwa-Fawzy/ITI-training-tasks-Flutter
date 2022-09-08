import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:todo/data class.dart';

class API extends StatefulWidget {
  const API({Key? key}) : super(key: key);
  @override
  State<API> createState() => _APIState();
}

class _APIState extends State<API> {
  Album? album;
  fetchAPI()async{
    http.Response response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print("The response of status code is ${response.statusCode}");
    print("The response of status code is ${response.body}");
    Map <String, dynamic> data =jsonDecode(response.body);
    print(response.body);
    print("Id is ${data['id']} and the name is ${data['name']}");
    setState(() {
      album=Album.fromJson(jsonDecode(response.body));
    });
  }
  @override
  void initState(){
    super.initState();
    fetchAPI();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API Trial"),),
      body:(album==null)? CircularProgressIndicator(): Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(album!.title),
            Text(album!.id.toString()),
          ],
        ),
      )
    );
  }



}





