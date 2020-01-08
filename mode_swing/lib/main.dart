
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
  Text day = Text(
    'Change to Night Mode',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );
  Text night = Text(
    'Change to Day Mode',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );
  Color dayappbg = Colors.yellow[800];
  
  Color nightappbg = Colors.deepPurple[900];
  Color dbg = Colors.yellow[200];
  Color nbg = Colors.deepPurple[800];
  AssetImage dayimage = AssetImage('assets/day.png');
  AssetImage nightimage = AssetImage('assets/night.png');
  Text daystate = Text(
    'Good Morning!!!',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellow[800]),
  );
  Text nightstate = Text(
    'Good Night!!!',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dbg,
        appBar: AppBar(
          title: Center(
            child: day,
          ),
          backgroundColor: dayappbg,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: dayappbg,
                borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              child: FlatButton(
             
             onPressed: (){
                setState(() {
                  dayappbg = nightappbg;
                  day = night;
                  dbg = nbg;
                  dayimage = nightimage;
                  daystate = nightstate;
                });
             },
             child: Text('Change Mode'),
           ),
            ),
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
            Center(
              child: daystate,
            )
          ],
        ),
      ),
    );
  }
}
