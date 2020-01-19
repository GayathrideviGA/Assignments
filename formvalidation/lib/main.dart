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
  final scaffoldkey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  static String _email = '';
  //Email Validation
  String validateEmail(String email) {
    Pattern pattern =r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(_email))
      return 'Enter Valid Email';
    else
      return null;
  }
  //Password validation
  String validatePassword(String password) {
    Pattern pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(password))
      return 'Enter Valid password';
    else
      return null;
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      key: scaffoldkey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/back.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                    ),
                    child: Text('Welcome\nBack',
                        style: TextStyle(
                            color: Color(0xff2f6703),
                            fontFamily: 'Montserrat-Bold',
                            fontSize: 24,
                            height: 1.5)),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 30),
                  width: width / 1.1,
                  height: 260,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, right: 10, left: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              icon: Icon(
                                Icons.mail,
                                color: Color(0xff2f6703),
                              ),
                            ),
                            validator: validateEmail,
                           
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 30, right: 10, left: 10),
                          child: TextFormField(
                            
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              icon: Icon(
                                Icons.lock,
                                color: Color(0xff2f6703),
                              ),
                            ),
                            validator:validatePassword,
                            
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState.validate())
                            {
                              scaffoldkey.currentState.showSnackBar(SnackBar(content: Text('Sign in Successful'),));
                            }
                            else
                            {
                              scaffoldkey.currentState.showSnackBar(SnackBar(content: Text('Sign failed'),)); 
                            }
                          },
                          child: Container(
                              margin:
                                  EdgeInsets.only(top: 20, left: 30, right: 30),
                              width: width / 1.2,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xff2f6703),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Sign in',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat-Bold',
                                        fontSize: 16,
                                      )),
                                ],
                              )),
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Or',
                        style: TextStyle(
                            color: Color(0xff2f6703),
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              InkWell(
                child: Container(
                    margin: EdgeInsets.only(top: 20, left: 60, right: 30),
                    width: width / 1.3,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff2f6703).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Sign Up',
                            style: TextStyle(
                              color: Color(0xff2f6703),
                              fontFamily: 'Montserrat-Bold',
                              fontSize: 16,
                            )),
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Create account? Sign up',
                        style: TextStyle(
                            color: Color(0xff2f6703),
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
