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
        backgroundColor: Color.fromARGB(220,138,43,226),
        title: Center(child: Text("New News"))),
    bottomNavigationBar: Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const <Widget>[
          Icon(Icons.favorite_border_outlined,
            color: Colors.white,
            size: 25.0),
          Icon(Icons.comment,
            color: Colors.white,
            size:25.0),
          Icon(Icons.share,
            color: Colors.white,
            size:25.0)
      ]
    ), color: const Color.fromARGB(255, 186,85,211),
      height: 50
    ),
    body: Container(
        child: Column(children: [
          Center(
              child: Image.asset("images/img1.jpg",
                  width: 300, height: 270, fit: BoxFit.fitHeight)),
          Container(
              child: Row(
                children: [
                  const CircleAvatar(
                      backgroundImage: AssetImage("images/icon.jpeg"),
                      radius: 25),
                  Container(
                      margin: const EdgeInsets.only(left: 17),
                      child: const Text("Instructor",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 128, 128),
                              fontSize: 20))),

                ],
              ),
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 35)),
          const Text(
              "The Information Technology Institute is a national institute established in 1993 in Egypt specializing in IT. The Information Technology Institute is a national institute established in 1993 by the Egyptian Information and Decision Support Center.",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 169, 169, 169)))
        ])),
  );


}
}

