import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget 
{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffca3a27),
        title: Center(child: Text('Geekyants Academy',style: TextStyle(color: Colors.white),),),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[

             ],
           ),
        
        ],
      ),
    );
  }
}
