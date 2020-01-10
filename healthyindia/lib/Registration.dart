import 'package:flutter/material.dart';
import 'package:healthyindia/Calculator.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff59c8b5),
        title: Text(
          'Sign up',
          style: TextStyle(color: Colors.white),
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
                    image: AssetImage('assets/logo.png'), fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(100)),
          ),
          Container(
              alignment: Alignment.topCenter,
              width: 300,
              height: 400,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xff59c8b5).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      autocorrect: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(color: Colors.black),
                          icon:
                              Icon(Icons.account_circle, color: Colors.black)),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Calculator()));
                        },
                        color: Color(0xff59c8b5),
                        child: Text('Sign Up',
                            style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
