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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Center(
              child: Text('Container Play'),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(top: 10),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          boxShadow: [
                            BoxShadow(color: Colors.teal, blurRadius: 2)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage('assets/geek.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal),
                      child: Center(
                        child: Text('Code',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: RadialGradient(colors: [
                            Colors.teal[100],
                            Colors.teal[300],
                            Colors.teal[500],
                            Colors.teal[700],
                            Colors.teal[900],
                          ])),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                     Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                          ),
                          color: Colors.teal),

                    ),
                    Container(

                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 10,
                          color: Colors.teal
                        ),
                          
                          color: Colors.white),
                    
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(colors: [
                            Colors.blue[100],
                            Colors.blue[300],
                            Colors.blue[500],
                            Colors.blue[700],
                            Colors.blue[900],
                          ])),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      width:390,
                      height: 400,
                      color: Colors.white,
                      child: 
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    width: 100,
                                    height: 100,
                                    color: Colors.blue,
                                  ),
                                   Container(
                                    alignment: Alignment.topCenter,
                                    width: 200,
                                    height: 100,
                                    color: Colors.deepPurple,
                                  ),
                                   Container(
                                    alignment: Alignment.topRight,
                                    width: 90,
                                    height: 100,
                                    color: Colors.deepOrange,
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 200,
                                    height: 200,
                                    color: Colors.orange,
                                  ),
                                   Container(
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 200,
                                    color: Colors.teal,
                                  ),
                                Container(
                                    alignment: Alignment.centerRight,
                                    width: 90,
                                    height: 200,
                                    color: Colors.deepOrange,
                                  )
                                ],
                              ),
                               Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    width: 200,
                                    height: 100,
                                    color: Colors.purple,
                                  ),
                                   Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 100,
                                    height: 100,
                                    color: Colors.green,
                                  ),
                                Container(
                                    alignment: Alignment.bottomRight,
                                    width: 90,
                                    height: 100,
                                    color: Colors.deepOrange,
                                  )
                                ],
                              ),
                            ],
                          )
                      
                    )
                  ],
                )
              ],
            ),
            )
          )
          ),
    );
  }
}
