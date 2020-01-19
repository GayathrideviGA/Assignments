import 'package:flutter/material.dart';


class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  
  static int _count = 1;
  TextEditingController usernamecontrol = TextEditingController();
  TextEditingController passwordcontrol = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  //final months =List<String >.generate(12, (i) => "Month $i");
  static String user='username';
  static String pass='password';
  


  void save(){
    setState(() {
                                 String username = usernamecontrol.text;
                                 String password = passwordcontrol.text;
                                 user = username;
                                 pass = password;
                                 // collection
    List<Widget> _notes =
        new List.generate(_count, (int i) => ListTile(

        ));
                               });

  }
  
  void _addnotes() {
    setState(() {
      _count = _count + 1;
      save();
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff59c8b5),
          title: Text(
            'Notes',
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
              setState(() {
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                   return AlertDialog(
                        elevation: 0,
                        title: Text('Hello again !\nWould you like\nto log in?',style: TextStyle(color: Color(0xff59c8b5),fontWeight: FontWeight.w600,height: 1.2),),
                        content: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('Username:',textAlign: TextAlign.left,style: TextStyle(color: Color(0xff59c8b5),fontWeight: FontWeight.w500,))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: TextFormField(
                                  controller: usernamecontrol,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(top: 10),child:Text('Password:',textAlign: TextAlign.left,style: TextStyle(color: Color(0xff59c8b5),fontWeight: FontWeight.w500,)) ,)
                                  
                                ],
                              ),
                               Padding(
                                padding: EdgeInsets.all(5),
                                child: TextFormField(
                                  controller: passwordcontrol,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your Password',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          InkWell(
                            onTap: (){
                               _addnotes();
                                Navigator.pop(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text('Save',style: TextStyle(color: Color(0xff59c8b5),fontWeight: FontWeight.w500,)),
                            )
                          ),
                          InkWell(
                            onTap: (){
                                Navigator.pop(context);
                            },
                           child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text('Cancel',style: TextStyle(color: Color(0xff59c8b5),fontWeight: FontWeight.w500,)),
                            )
                          )
                        ],
                   );
                  }
                );
              });
          },
          backgroundColor: Color(0xff59c8b5),
          child: Icon(Icons.add,color:Colors.white),
        ),
      body:  ListView(
        padding: EdgeInsets.all(10.0),
       
      )
      ),
    );
  }
}
