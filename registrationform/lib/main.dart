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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffca3a27),
        title: Center(
          child: Text(
            'Geekyants Academy',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/pic.png'), fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(100)),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
            width: 400,
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/office.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              alignment: Alignment.topCenter,
              width: 400,
              height: 400,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    autocorrect: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(color: Colors.black),
                        icon: Icon(Icons.account_circle, color: Colors.black)),
                  ),
                  TextField(
                    autocorrect: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Enter your mail id',
                        hintStyle: TextStyle(color: Colors.black),
                        icon: Icon(Icons.mail, color: Colors.black)),
                  ),
                  TextField(
                    autocorrect: true,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: 'Enter your phone number',
                        hintStyle: TextStyle(color: Colors.black),
                        icon: Icon(Icons.call, color: Colors.black)),
                  ),
                  TextField(
                    keyboardType: TextInputType.phone,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(color: Colors.black),
                        icon: Icon(Icons.lock, color: Colors.black)),
                  ),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.black),
                        icon: Icon(Icons.lock, color: Colors.black)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: FlatButton(
                      onPressed: (){},
                      color:Color(0xffca3a27),
                      child: Text('Register',style:TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
