import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyHomePage(),
));


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color logobg  = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Center(child: Text('Rainbow')),
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: logobg ,
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
                        Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                 height: 400,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    children: <Widget>[
                      FlatButton(
                        color: Color(0xff302c9c),
                        onPressed: () {
                          setState(() {
                            logobg = Color(0xff302c9c);
                          });
                        },
                        child: Center(
                          child: Text(
                            'Violet',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                       FlatButton(
                        color: Color(0xff0a2284),
                        onPressed: () {
                          setState(() {
                            logobg = Color(0xff0a2284);
                          });
                        },
                        child: Center(
                          child: Text(
                            'Indigo',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                       FlatButton(
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            logobg = Colors.blue;
                          });
                        },
                        child: Center(
                          child: Text(
                            'Blue',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      FlatButton(
                        color: Colors.green,
                        onPressed: () {
                          setState(() {
                            logobg = Colors.green;
                          });
                        },
                        child: Center(
                          child: Text(
                            'Green',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          setState(() {
                            logobg = Colors.yellow;
                          });
                        },
                        child: Center(
                          child: Text(
                            'Yellow',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      FlatButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            logobg = Colors.orange;
                          });
                        },
                        child: Center(
                          child: Text(
                            'Orange',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      FlatButton(
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            logobg = Colors.red;
                          });
                        },
                        child: Center(
                          child: Text(
                            'Red',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
