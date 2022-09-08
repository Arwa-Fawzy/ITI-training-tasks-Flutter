import 'package:flutter/material.dart';
import 'package:arwa/Container.dart';

class call extends StatelessWidget{
  const call({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(child: Row(
        children: [
        Container(
        margin: const EdgeInsets.only(left: 100, right: 3, bottom: 4),
          child: Row(
            children: [
              cContainer(
                  c1: const Color.fromARGB(255, 75,0,130),
                  c2: const Color.fromARGB(255, 138,43,226),
                  height: 300, s1: "C", s2: "Do", s3: "1"),
              cContainer(
                  c1: const Color.fromARGB(255, 72,61,139),
                  c2: const Color.fromARGB(255, 106,90,205),
                  height: 280, s1: "D", s2: "Ri", s3: "2"),
              cContainer(
                  c1: const Color.fromARGB(255, 65,105,225),
                  c2: const Color.fromARGB(255, 100,149,237),
                  height: 260, s1: "E", s2: "Mi", s3: "3"),
              cContainer(
                  c1: const Color.fromARGB(255, 46,139,87),
                  c2: const Color.fromARGB(255, 60,179,113),
                  height: 240, s1: "F", s2: "FA", s3: "4"),
              cContainer(
                  c1: const Color.fromARGB(255, 184,134,11),
                  c2: const Color.fromARGB(255, 218,165,32),
                  height: 220, s1: "G", s2: "So", s3: "5"),
              cContainer(
                  c1: const Color.fromARGB(255, 255,69,0),
                  c2: const Color.fromARGB(255, 245, 114, 67),
                  height: 200, s1: "A", s2: "LA", s3: "6"),
              cContainer(
                  c1: const Color.fromARGB(255, 139,69,19),
                  c2: const Color.fromARGB(255, 160,82,45),
                  height: 180, s1: "B", s2: "SI", s3: "7"),
              cContainer(
                  c1: const Color.fromARGB(255, 220,20,60),
                  c2: const Color.fromARGB(255, 225, 67, 123),
                  height: 160, s1: "C", s2: "DO", s3: "8")
            ],
          ),
        ),
    ])));
  }
}

