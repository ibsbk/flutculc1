import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}


String nowNumber = '';

int innerNumber = 0;

int firstNumber = 0;
int secondNumber = 0;

String move = '';

int equalNumber = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children:[
                      Container(
                        margin: const EdgeInsets.all(50),
                        child: Text('$nowNumber'),
                      )
                    ]
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                          setState(() {
                            nowNumber += '1';
                          });},
                            child: Text('1'),
                          ),
                        )
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              nowNumber += '2';
                            });},
                            child: Text('2'),
                          ),
                        )
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              nowNumber += '3';
                            });},
                            child: Text('3'),
                          ),
                        )
                      ]
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              nowNumber += '4';
                            });},
                            child: Text('4'),
                          ),
                        )
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              nowNumber += '5';
                            });},
                            child: Text('5'),
                          ),
                        )
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              nowNumber += '6';
                            });},
                            child: Text('6'),
                          ),
                        )
                      ]
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              nowNumber += '7';
                            });},
                            child: Text('7'),
                          ),
                        )
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              nowNumber += '8';
                            });},
                            child: Text('8'),
                          ),
                        )
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              nowNumber += '9';
                            });},
                            child: Text('9'),
                          ),
                        )
                      ]
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              if(nowNumber == '' || nowNumber == '0')
                                {
                                  nowNumber = '';
                                }
                              else
                                {
                                  nowNumber += '0';
                                }


                            });},
                            child: Text('0'),
                          ),
                        )
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              if(move != 'plus')
                                {
                                  move = 'plus';
                                  firstNumber = int.parse(nowNumber);
                                  nowNumber = '';
                                  print(move);
                                }
                              if(move == 'plus')
                                {
                                  firstNumber = int.parse(nowNumber);
                                  nowNumber = '';
                                }
                            });},
                            child: Text('+'),
                          ),
                        )
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              if(move != 'minus')
                              {
                                move = 'minus';
                                firstNumber = int.parse(nowNumber);
                                nowNumber = '';
                                print(move);
                              }
                              if(move == 'minus')
                              {
                                firstNumber = int.parse(nowNumber);
                                nowNumber = '';
                              }
                            });},
                            child: Text('-'),
                          ),
                        )
                      ]
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.fromLTRB(45,0,50,20),
                            child: Text(''),
                          ),

                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(onPressed: () {
                            setState(() {
                              if(move == 'plus')
                                {
                                  secondNumber = int.parse(nowNumber);
                                  equalNumber = firstNumber + secondNumber;
                                  innerNumber = equalNumber;
                                  nowNumber = equalNumber.toString();
                                }
                              if(move == 'minus')
                                {
                                  secondNumber = int.parse(nowNumber);
                                  equalNumber = firstNumber - secondNumber;
                                  nowNumber = equalNumber.toString();
                                }

                            });},
                            child: Text('='),
                          ),
                        )
                      ]
                  ),
                  Column(
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Text(''),
                        )
                      ]
                  ),
                ],
              ),
            ],
        ),
      ),
    );
  }
}
