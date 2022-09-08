import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home:HomePage()));
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:
        Center(child: Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 100, right: 3, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                    gradient: const LinearGradient(
                        colors:[Colors.deepPurple,Colors.purpleAccent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.5,0.5]
                    )
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const <Widget>[
                      Text("D",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      Text("C",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      Text("1",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),)
                    ]
                ),
                height: 230,
                width:45
            ),
            Container(
              margin: const EdgeInsets.only(left: 3, right: 3, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo,
                  gradient: const LinearGradient(
                      colors:[Colors.indigoAccent,Colors.indigo],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      stops: [0.5,0.5]
                  )
              ),
              height: 220,
              width:  45,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Text("D",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("Ri",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("2",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),)
                  ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 3, right: 3, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  gradient: const LinearGradient(
                      colors:[Colors.blue,Colors.blueGrey],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      stops: [0.5,0.5]
                  )
              ),
              height: 210,
              width:  45,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Text("E",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("Mi",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("3",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),)
                  ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 3, right: 3, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                  gradient: const LinearGradient(
                      colors:[Colors.greenAccent,Colors.green],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      stops: [0.5,0.5]
                  )
              ),
              height: 200,
              width:  45,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Text("F",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("FA",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("4",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),)
                  ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 3, right: 3, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                  gradient: const LinearGradient(
                      colors:[Colors.yellowAccent,Colors.yellow],
                      begin: Alignment.topRight,
                      end: Alignment.topLeft,
                      stops: [0.5,0.5]
                  )
              ),
              height: 190,
              width:  45,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Text("G",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("So",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("5",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),)
                  ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 3, right: 3, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                  gradient: const LinearGradient(
                      colors:[Colors.orangeAccent,Colors.orange],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      stops: [0.5,0.5]
                  )
              ),
              height: 180,
              width:  45,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Text("A",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("LA",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("6",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),)
                  ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 3, right: 3, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.brown,
                  gradient: const LinearGradient(
                      colors:[Colors.brown,Colors.brown],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      stops: [0.5,0.5]
                  )
              ),
              height: 170,
              width:  45,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Text("B",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("Si",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("7",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),)
                  ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 3, right: 3, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink,
                  gradient: const LinearGradient(
                      colors:[Colors.pinkAccent,Colors.pink],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      stops: [0.5,0.5]
                  )
              ),
              height: 160,
              width:  45,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Text("C",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("DO",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    Text("8",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),)
                  ]
              ),
            ),
          ],
        ))
    );
  }
}

