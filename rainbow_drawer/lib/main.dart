import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
 String title = 'Rainbow';
 Color bg = Colors.blueGrey;
 void changeColor(var change){
    setState(() {
    switch (change) {
      case 'violet':
        bg = Color(0xff302c9c);
        break;
      case 'indigo':
        bg = Color(0xff0a2284);
        break;
      case 'blue':
        bg = Colors.blue;
        break; 
      case 'green':
        bg = Colors.green;
        break;
      case 'yellow':
        bg = Colors.yellow;
        break;
      case 'orange':
        bg = Colors.orange;
        break;
      case 'red':
        bg = Colors.red;
        break;
      default: bg = Colors.blueGrey;
    }
    });
  }
  @override
  Widget build(BuildContext context) {
  return SafeArea(
     child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title,style: TextStyle(color: Colors.white),),
        backgroundColor: bg,
      ),
              drawer: Drawer(
            child: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                changeColor("violet");
              },
              leading: Icon(Icons.add_circle, color:Color(0xff302c9c)),
              title: Text(
                'Violet',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                 changeColor("indigo"); 
              },
              leading: Icon(Icons.add_circle, color: Color(0xff0a2284)),
              title: Text(
                'Indigo',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
              changeColor("blue");
              },
              leading: Icon(Icons.add_circle, color: Colors.blue),
              title: Text(
                'Blue',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                changeColor("green");
              },
              leading: Icon(Icons.add_circle, color: Colors.green),
              title: Text(
                'Green',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                changeColor("yellow");
              },
              leading: Icon(Icons.add_circle, color: Colors.yellow),
              title: Text(
                'Yellow',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                 changeColor("orange");
              },
              leading: Icon(Icons.add_circle, color: Colors.orange),
              title: Text(
                'Orange',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                changeColor("red");
              },
              leading: Icon(Icons.add_circle, color: Colors.red),
              title: Text(
                'Red',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        )),
     ),
    );
  }
}
