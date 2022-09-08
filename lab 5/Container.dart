import 'package:flutter/material.dart';
import 'package:arwa/column.dart';

class cContainer extends StatelessWidget {
  @override
  Color c1, c2;
  String s1, s2, s3;
  double height;

  cContainer({Key? key, required this.c1,
    required this.c2, required this.s1, required this.s2,
    required this.s3, required this.height}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, right: 3, bottom: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [c1, c2],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5, 0.5]
            )
        ),
        child: cColumn(
            s1: s1,
            s2: s2,
            s3: s3
        ),
        height: height,
        width: 55
    );
  }
}