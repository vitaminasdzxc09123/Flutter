import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:math';



main() => runApp(

  Directionality(
    textDirection: TextDirection.ltr,
    child: MyApp(),

  ),

);
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {




    return Container(
      color: color,
      child: Container(
        child: GestureDetector(
          child: Center(
              child: Text("Hello there")),
          onTap: () {

            print('You pressed me');


            setState(() {
              color = Color((Random().nextDouble() * 0x16777216).toInt()).withOpacity(1.0);
            });
          },


      ),

      ),

    );
  }
}