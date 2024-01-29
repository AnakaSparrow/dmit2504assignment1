// ignore_for_file: use_key_in_widget_constructors, todo

import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //TODO: Put your code here to complete this app.
              Column(// COLUMN ONE
                children: <Widget>[
                  Container(// CONTAINER ONE
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.black,
                        width: 3.0
                      )
                    ),
                    child: const Center(
                      child: Text(
                          'Container 1'
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 3.14 / 4,
                    child: Container(// CONTAINER TWO
                      height: 100.0,
                      width: 100.0,
                      color: Colors.white,
                      child: const Center(child: 
                      Text(
                        'Container 2'
                      ),
                      )
                    )
                  )
                ]
              ),
              Column(// COLUMN TWO
                children: <Widget> [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(// CONTAINER THREE
                        width: 100.0,
                        color: Colors.yellow,
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Container 3',
                          )
                        )
                      ),
                    )
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(// CONTAINER FOUR
                        width: 100.0,
                        color: Colors.blue,
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Container 4',
                          )
                        )
                      ),
                    )
                  )
                ]
              ),
              Column( // COLUMN THREE
                children: <Widget>[
                  Expanded(
                      child: Container(//CONTAINER 5
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3.0),
                          color: Colors.black
                        ),
                        child: const Center(
                          child: Text(
                            'Container 5',
                            style: TextStyle(
                              color: Colors.white
                            )
                          )
                        )
                      ),
                  ),
                  Expanded(
                    child: Container( //CONTAINER SIX 
                      width: 100.0,
                      color: Colors.red,
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child:Text(
                          'Con 6',
                          style: TextStyle(fontSize: 30),
                        )
                      )
                    )
                  )
                ],
              )      
            ],
        ),
      ),
    );
  }
}

//Create a Material Widget with a Scaffold. In the body of the Scaffold start with a Row Widget.

//All you will need is the row, column and container widgets, and any other widgets that are associated with the aforementioned widgets.

//Do NOT use the stack or positioned widgets.

//All containers will have a height and width of 100px.

//All font sizes will be default except Con 6 which will be font size 30.

//All borders will have a width of 3px. Be careful because some elements do not have a border.

//All padding will be 10px. Be careful because some elements do not have padding.

//The easiest solution is to have 1 row with 3 columns as children of the row. 