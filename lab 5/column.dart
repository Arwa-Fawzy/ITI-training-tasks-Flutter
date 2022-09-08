import 'package:flutter/material.dart';

class cColumn extends StatelessWidget {
  @override
  String ? s1, s2, s3;

  cColumn({Key? key, this.s1, this.s2, this.s3}) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(s1!,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),
          Text(s2!,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),
          Text(s3!,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),)
        ]
    );
  }
}