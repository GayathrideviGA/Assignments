import 'package:flutter/material.dart';

class Caloriecalci extends StatefulWidget {
  @override
  _CaloriecalciState createState() => _CaloriecalciState();
}

class _CaloriecalciState extends State<Caloriecalci> {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff59c8b5),
          title: Text(
            'Calorie Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
      
      ),
    );
  }
}
