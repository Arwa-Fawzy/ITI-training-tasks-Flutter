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
  List<Album> albumList=[];
  fetchAPI()async{
    http.Response response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    //print("The response of status code is ${response.statusCode}");
    //print("The response of status code is ${response.body}");
    print(response.body);

    if (response.statusCode == 200) {
    List data =jsonDecode(response.body);
    setState(() {
      for(int i=0; i<data.length; ++i){
        albumList.add(Album.fromJson(data[i]));
      }
    });
  }else{
      throw Exception("error");
    }
    }
    fetchAlbum() async {
      await fetchAPI();
    }
  @override
  void initState() {
    super.initState();
    fetchAlbum();
  }




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API Trial"),),
      body:albumList.isEmpty? CircularProgressIndicator(): Center(
        child: ListView.builder(
            itemCount: albumList.length,
            itemBuilder: (BuildContext context, i) => Card(
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Text("${albumList[i].userId}"),
              Text( "${albumList[i].id}"),
              Text("${albumList[i].title}"),
            ]))
        ),
        ),
    );
  }



}





