import 'package:flutter/material.dart';

const _emojis = [
  '😞',
  '😂',
  '😁',
  '🤓',
  '😜',
  '😃',
];

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
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Slider Demo'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: new LinearGradient(
                colors: [Colors.teal, Colors.tealAccent],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${_emojis[_value.toInt()]}',
                style: TextStyle(fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(_emojis[0], softWrap: true),
                      Expanded(
                        child: Slider(
                          value: _value,
                          min: 0.0,
                          max: 5.0,
                          onChangeStart: (double value) {},
                          onChangeEnd: (double value) {},
                          onChanged: (double value) {
                            setState(() {
                              _value = value;
                            });
                          },
                          activeColor: Colors.white,
                          inactiveColor: Colors.black45,
                        ),
                      ),
                      Text(
                        _emojis[5],
                        softWrap: true,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
