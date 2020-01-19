import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  int _count = 0;
  TextEditingController notetitlecontrol = TextEditingController();
  TextEditingController notedescontrol = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  String notetitle = 'username';
  String notedes = 'password';
  List listtitle = new List();
  List listdescription = new List();
  void save() {
    setState(() {
      String notemakertitle = notetitlecontrol.text;
      String notemakerdes = notedescontrol.text;
      notetitle = notemakertitle;
      notedes = notemakerdes;
      // collection
    });
  }

  void _addnotes() {
    setState(() {
      String notemakertitle = notetitlecontrol.text;
      String notemakerdes = notedescontrol.text;
      notetitle = notemakertitle;
      notedes = notemakerdes;
      _count = _count + 1;
      listtitle.add(notetitle);
      listdescription.add(notedes);
      // save();
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
            onPressed: () {
              setState(() {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        elevation: 0,
                        title: Text(
                          'Hello !\nWrite your note here',
                          style: TextStyle(
                              color: Color(0xff59c8b5),
                              fontWeight: FontWeight.w600,
                              height: 1.2),
                        ),
                        content: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('Title:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff59c8b5),
                                        fontWeight: FontWeight.w500,
                                      ))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: TextFormField(
                                  controller: notetitlecontrol,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your title',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text('Description:',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color(0xff59c8b5),
                                          fontWeight: FontWeight.w500,
                                        )),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: TextFormField(
                                  controller: notedescontrol,
                                  maxLines: 10,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your description',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          InkWell(
                              onTap: () {
                                _addnotes();
                                Navigator.pop(context);
                                notetitlecontrol.clear();
                                notedescontrol.clear();
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Text('Save',
                                    style: TextStyle(
                                      color: Color(0xff59c8b5),
                                      fontWeight: FontWeight.w500,
                                    )),
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Text('Cancel',
                                    style: TextStyle(
                                      color: Color(0xff59c8b5),
                                      fontWeight: FontWeight.w500,
                                    )),
                              ))
                        ],
                      );
                    });
              });
            },
            backgroundColor: Color(0xff59c8b5),
            child: Icon(Icons.add, color: Colors.white),
          ),
          body: ListView.builder(
            padding: EdgeInsets.all(10.0),
            itemCount: _count,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(listtitle[index].toString(),
                    style: TextStyle(
                      color: Color(0xff59c8b5),
                      fontWeight: FontWeight.w500,
                    )),
               subtitle: Text(listdescription[index].toString(),
                    style: TextStyle(
                      color: Colors.blueGrey,
                      )),
              trailing: IconButton(
                onPressed: (){
                  
                },
                icon: Icon(Icons.delete,color:Colors.blueGrey),
              ),
              );
            },
          )),
    );
  }
}
