import 'dart:math';
import 'package:flutter/material.dart';
import 'package:arwa/quiz.dart';

void main() => runApp(QuizPage());

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int index=0;
    @override
Random random=Random();

Widget build(BuildContext context){
      return Scaffold(
        body:SafeArea(
          child: Stack(
              alignment: Alignment.center,
              children: [
              Image.asset('images/Copy.jpeg'),
              Spacer(flex: 9),
              Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children:[
                Spacer(flex: 6,),
                Text(DetectList[index].name, textAlign: TextAlign.right, style: TextStyle(color: Colors.blue[900],fontSize: 20)),
                Spacer(flex: 2),
                Text(DetectList[index].line_1, textAlign: TextAlign.right, style: TextStyle(color: Colors.blue[900],fontSize: 20)),
                Spacer(flex: 2),
                Text(DetectList[index].line_2, textAlign: TextAlign.right, style: TextStyle(color: Colors.blue[900], fontSize: 20)),
                Spacer(flex: 1,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    index=random.nextInt(DetectList.length);
                  });
                }, child: Text("Tap to play",),
                  style: ElevatedButton.styleFrom(primary: Colors.grey[800], fixedSize: Size(100,50))
              ,),
                Spacer(flex: 3,),
              ])
      ])));
    }
  }

