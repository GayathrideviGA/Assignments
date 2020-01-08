import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

class _MyHomePageState extends State<MyHomePage> 
{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Color(0xffca3a27),
         title: Center(child: Text('Text Widget Play'),),
       ),
       body: ListView(
         
         padding: EdgeInsets.all(20),
         scrollDirection: Axis.vertical,
         children: <Widget>[
           Container(
             alignment: Alignment.topCenter,
             margin: EdgeInsets.all(20),
             width: 150,
             height: 150,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/pic.png'),
                 fit: BoxFit.contain,
               ),
             ),
           ),
           Text('Welcome to Geekyants',textAlign:TextAlign.left,style:TextStyle(color:Colors.brown,fontFamily: 'Roboto',fontSize: 30 )),
           Text('Welcome to Geekyants',textAlign:TextAlign.left,style:TextStyle(color:Colors.brown,fontFamily: 'RobotoSlab',fontSize: 30 )),
           Text('Welcome to Geekyants',textAlign:TextAlign.left,style:TextStyle(color:Colors.brown,fontFamily: 'Anton',fontSize: 30 )),
           Text('Welcome to Geekyants',textAlign:TextAlign.left,style:TextStyle(color:Colors.brown,fontFamily: 'NotoSerif',fontSize: 30 )),
           Text('Welcome to Geekyants',textAlign:TextAlign.left,style:TextStyle(color:Colors.brown,fontFamily: 'Sniglet',fontSize: 30 )),
         ],
       ),
    );
  }
}
