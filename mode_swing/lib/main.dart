import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  MyHomepagestate createState() => MyHomepagestate();
}

class MyHomepagestate extends State<MyHomepage> {
  String day = 'Change to Night Mode';
  String night = 'Change to Day Mode';
  Color dayappbg = Colors.yellow[800];

  Color dbg = Colors.yellow[700];

  AssetImage dayimage = AssetImage('assets/day.png');

  String daystate = 'Good Morning !!';
  String nightstate = 'Good Night !!';
  List<bool> isSelected = [true, false];
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dbg,
      appBar: AppBar(
        backgroundColor: dayappbg,
        title: Center(
            child: Text(
          day,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Switch(value: isSelected[1],
             onChanged: 
             (bool value){
                setState(() {
                  value=isSelected[1];
                  day =night;
                  dayappbg = Colors.deepPurple[800];
                  dbg = Colors.deepPurple[700];
                  dayimage = AssetImage('assets/night.png');
                  daystate =nightstate;
                });
             },)
                  
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(20),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: dayimage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Text(
            daystate,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
