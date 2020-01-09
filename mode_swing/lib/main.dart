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

  Color dayappbg = Colors.yellow[800];

  Color dbg = Colors.yellow[700];

  AssetImage dayimage = AssetImage('assets/day.png');

  Text daystate = Text(
    'Good Morning!!!',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );

  List<bool> isSelected = [true, false];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dbg,
      appBar: AppBar(
        backgroundColor: dayappbg,
        title: Center(
          child: day
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ToggleButtons(
                  selectedBorderColor: Colors.black,
                  selectedColor: Colors.brown,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  borderWidth: 2,
                  borderColor: Colors.black,
                  children: <Widget>[
                    Icon(Icons.wb_sunny),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.black,
                    )
                  ],
                  isSelected: isSelected,
                  onPressed: (int index) {
                    setState(() {
                      for (int buttonIndex = 0;
                          buttonIndex < isSelected.length;
                          buttonIndex++) {
                        if (buttonIndex == index) {
                          isSelected[buttonIndex] = !isSelected[buttonIndex];
                          dayappbg = Colors.deepPurple[900];
                          day = Text(
                            'Change to Day Mode',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          );
                          dayimage = AssetImage('assets/night.png');
                          dbg = Colors.deepPurple[800];
                          daystate = Text(
                            'Good Night!!!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          );
                        } else {
                          isSelected[buttonIndex] = false;
                          day = Text(
    'Change to Night Mode',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );
                          dayappbg = Colors.yellow[800];
                          dayimage = AssetImage('assets/day.png');
                          dbg = Colors.yellow[700];
                          daystate = Text(
    'Good Morning!!!',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );
                        }
                      }
                    });
                  },
                ),
              ),
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
          daystate
        ],
      ),
    );
  }
}
