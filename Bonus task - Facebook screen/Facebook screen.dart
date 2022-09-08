import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home:HomePage()));
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
          backgroundColor: Colors.white,
          title: Text("Suggested for you", style: TextStyle(color: Colors.black,fontSize:17),),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.list,
            color: Colors.white,
          ),
          onPressed: () {
          },
        )],),
      bottomNavigationBar: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(Icons.home_outlined,
                    color: Color.fromARGB(255, 128,128,128),
                    size: 25.0),
                Icon(Icons.ondemand_video_rounded,
                    color: Color.fromARGB(255, 128,128,128),
                    size:25.0),
                Icon(Icons.people_rounded,
                    color: Color.fromARGB(255, 128,128,128),
                    size:25.0),
                Icon(Icons.edit_note,
                    color: Color.fromARGB(255, 128,128,128),
                    size:25.0),
                Icon(Icons.notifications_none_outlined,
                    color: Color.fromARGB(255, 128,128,128),
                    size:25.0),
                Icon(Icons.list,
                    color: Color.fromARGB(255, 128,128,128),
                    size:25.0)
              ]
          ), color:  Colors.white70,
          height: 50
      ),
      body: Container(
          child: Column(children: [Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                      backgroundImage: AssetImage("images/img1.png"),
                      radius: 20),
                  Container(
                      margin: const EdgeInsets.only(left: 0, bottom:0, top: 10),
                      child: const Text("Samantha Chen",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23))),
                  Icon(Icons.assignment_turned_in_rounded,
                      color: Colors.blue,
                      size: 20.0,
                  )
                ],
              ),
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 35)),
            Container(
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top:0, left: 13),
                        child: const Text("8h.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17))),
                    Icon(Icons.public)
                  ],
                ),
                margin: EdgeInsets.only(left: 40, right: 40, bottom: 35)),
            Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("  Here's Jasper, my new puppy!", style: TextStyle(fontSize: 17, ),),
                )
            )
            ,Center(
                child: Image.asset("Image/Capture.PNG",
                    width: 300, height: 270, fit: BoxFit.fitHeight)),
        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.thumb_up_alt_outlined,color: Color.fromARGB(255, 128, 128,128)),
                Container(
                    child: const Text("Like",
                        style: TextStyle(
                            color: Color.fromARGB(255, 128, 128,128),
                            fontSize: 17))),
                Icon(Icons.comment,color: Color.fromARGB(255, 128, 128,128)),
                Container(
                    child: const Text("Comment",
                        style: TextStyle(
                            color: Color.fromARGB(255, 128, 128,128),
                            fontSize: 17))),
                Icon(Icons.screen_share_rounded, color: Color.fromARGB(255, 128, 128,128)),
                Container(
                    child: const Text("Share",
                        style: TextStyle(
                            color: Color.fromARGB(255, 128, 128,128),
                            fontSize: 17))),
              ],
            ),
          )
          ])),
    );
  }
}

