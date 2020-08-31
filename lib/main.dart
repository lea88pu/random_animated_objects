import 'dart:math';
import 'package:random_animated_objects/ui/circle.dart';
import 'package:flutter/material.dart';
import 'package:random_animated_objects/ui/triangle.dart';
import 'package:random_animated_objects/ui/cube.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random random = Random();
  CustomPainter randomTriangle;

  Widget randomWidget;

  getRandom() {
    int counter = random.nextInt(3);
    if (counter == 0) {
      setState(() {
        return randomWidget = Cube();
      });
    } else if (counter == 1) {
      setState(() {
        return randomWidget = Circle();
      });
    } else {
      setState(() {
        return randomWidget = Triangle();
      });
    }
  }

  @override
  void initState() {
    randomWidget = Cube();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            randomWidget,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: getRandom,
      ),
    );
  }
}

