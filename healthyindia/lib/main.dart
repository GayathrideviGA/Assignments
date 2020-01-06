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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff59c8b5),
          title: Center(
            child: Text(
              'Healthy India',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        margin: EdgeInsets.only(top: 30, bottom: 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/logo.png'),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Welcome to Healthy India!!',
                          style:
                              TextStyle(color: Color(0xff59c8b5), fontSize: 14))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 350,
                        height: 250,
                        margin: EdgeInsets.only(top: 40, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Color(0xff59c8b5), blurRadius: 2)
                            ],
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: <Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, left: 20, right: 20),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        focusColor: Color(0xff59c8b5),
                                        icon: Icon(Icons.person,
                                            color: Color(0xff59c8b5)),
                                        hintText: 'Enter your Name',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, left: 20, right: 20),
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        focusColor: Color(0xff59c8b5),
                                        icon: Icon(
                                          Icons.lock_outline,
                                          color: Color(0xff59c8b5),
                                        ),
                                        hintText: 'Enter your Password',
                                        
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 30, left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                            width: 100,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              color: Color(0xff59c8b5),
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: FlatButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Login',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                           decoration: BoxDecoration(
                                              color: Color(0xff59c8b5),
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: FlatButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Sign up',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ))
                                ])
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
