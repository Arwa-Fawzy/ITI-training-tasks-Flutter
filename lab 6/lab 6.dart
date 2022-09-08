import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp( const MaterialApp( home: HomePage(),
  ),
);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 81, 255),
      appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text("Ask me anything"),
        ),
        backgroundColor: Color.fromARGB(255, 4, 16, 186),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);
  @override
  _Ball createState() => _Ball();
}
class _Ball extends State<Ball> {
  int counter = 1;
  void updateImage() {
    setState(() {
      counter = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: updateImage, child: Image.asset('images/ball$counter.png',
        ),
      ),
    );
  }
}