import 'package:flutter/material.dart';
import 'package:healthyindia/Calculator.dart';
import 'package:healthyindia/Caloriecalculator.dart';
import 'package:healthyindia/Heartbeat.dart';
import 'package:healthyindia/Moodtracker.dart';
import 'package:healthyindia/Notes.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff59c8b5),
          title: Text(
            'Welcome Healthy India',
            style: TextStyle(color: Colors.white),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0,
         selectedItemColor: Color(0xff59c8b5),
          unselectedFontSize: 14,
          selectedFontSize: 12,
         elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(
                    Icons.note_add,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notes()));
                  },
                ),
                title: new Text('Notes')),
                BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(
                    Icons.fastfood,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Caloriecalci()));
                  },
                ),
                title: new Text('Diet Plan',style: TextStyle(color: Colors.blueGrey),)),
                BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(
                    Icons.perm_contact_calendar,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Caloriecalci()));
                  },
                ),
                title: new Text('Advisor')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Color(0xff59c8b5),
          child: Icon(Icons.call,color:Colors.white),
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.cover,
                    )),
              ),
              decoration: BoxDecoration(
                color: Color(0xff59c8b5),
              ),
              accountEmail: Text(
                'gayuga99@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
              accountName: Text(
                'Gayathri Devi S',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Calculator()));
              },
              leading: Icon(Icons.healing, color: Colors.blueGrey),
              title: Text(
                'BMI Calculator',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Caloriecalci()));
              },
              leading: Icon(Icons.compare, color: Colors.blueGrey),
              title: Text(
                'Calorie Calculator',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Moodtracker()));
              },
              leading: Icon(Icons.feedback, color: Colors.blueGrey),
              title: Text(
                'Mood Tracker',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Heartbeat()));
              },
              leading: Icon(Icons.favorite, color: Colors.blueGrey),
              title: Text(
                'Heartbeat Calculator',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                
              },
              leading: Icon(Icons.notifications, color: Colors.blueGrey),
              title: Text(
                'Notifications',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        )),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                    image: AssetImage('assets/health.jpg'),
                    fit: BoxFit.cover,
                  )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 350,
                    child: Text(
                      "Healthy India endeavors to advance consciousness of disease prevention opportunities, encourage earlier detection and treatment of chronic diseases, and foster healthy living through information and resources on healthy lifestyle. The aim is to enable citizens of India and around the world to achieve wellbeing of mind and body through knowledge-sharing in a simple, interactive and accessible format. The initiative seeks to promote balanced diet, physical activity, lifestyle management, caring for the environment and avoiding tobacco and alcohol related health problems. Information and expert opinion on hot topics such as stress management, blood pressure, diabetes, cancers, heart disease, and stroke and on factors that affect health such as climate change are provided here. The focus of efforts has always been to present information in an imaginative manner that may then create an ambience of change, in both individuals and communities for healthy behaviors and practices.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(height: 1.2, color: Colors.blueGrey),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
