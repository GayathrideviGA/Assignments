import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List flavourdisplay = [
    AssetImage('assets/one.png'),
    AssetImage('assets/two.png'),
    AssetImage('assets/three.png'),
    AssetImage('assets/four.png'),
    AssetImage('assets/five.png')
  ];
  List msg = [
    'Enlight your day with Tri Combo pack',
    'Enlight your day with Mono Colorful cups',
    'Enlight your day with Choco Brownie',
    'Enlight your day with Pista Scoop',
    'Enlight your day with Strawberry Scoop',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: width,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xff190a35),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Ibaco',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'RobotoSlab',
                              fontSize: 28,
                              letterSpacing: 5)),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: 350,
                    height: 350,
                    decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: flavourdisplay[index],
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300,
                    child: Text(msg[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff190a35),
                            fontFamily: 'RobotoSlab',
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 3,
                            height: 2)),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = Random().nextInt(5);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: width / 1.5,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff190a35),
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Flavours for you',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'RobotoSlab',
                                  fontSize: 16,
                                  letterSpacing: 1)),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child:
                                Icon(Icons.arrow_forward, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
