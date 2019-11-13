import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    );
  }
}