import 'package:flutter/material.dart';

class Caloriecalci extends StatefulWidget {
  @override
  _CaloriecalciState createState() => _CaloriecalciState();
}

class _CaloriecalciState extends State<Caloriecalci> {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  TextEditingController heightcontrol = TextEditingController();
  TextEditingController weightcontrol = TextEditingController();
  String bmistate='Your BMI is';
  String bmirange='0.00';
  void bmiCalculate()
  {
  setState((){
     
     double height = double.parse(heightcontrol.text);
     double weight = double.parse(weightcontrol.text);
     String bmi;
     double bmicalculated = weight/(height*height);
     bmirange = bmicalculated.toString();
     
     if(bmicalculated < 18.50){
       bmi = "UnderWeight";
     }
     else if(bmicalculated > 18.50 && bmicalculated <= 24.99){
       bmi = "Normal Weight";
     }
     else if(bmicalculated >24.99 && bmicalculated <= 29.99)
     {
       bmi = "Over Weight";
     }
     else
     {
       bmi = "Obesity";
     }
     bmistate = bmi;
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
            'Calorie Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
              body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 150,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/calorie.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Calorie Calculator',
                      style: TextStyle(
                          color: Color(0xff59c8b5),
                          fontSize: 14,
                          fontWeight: FontWeight.w500))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Age',
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5).withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                       child:TextField(
                      controller: heightcontrol,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Enter your age',
                          hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                    ),
                    ),
                  ),
                ],
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Height in meteres',
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5).withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                       child:TextField(
                      controller: heightcontrol,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Enter your height',
                          hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                    ),
                    ),
                  ),
                ],
              ),
                              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Weight in kilograms',
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5).withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                       child:TextField(
                      controller: heightcontrol,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Enter your Weight',
                          hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                    ),
                    ),
                  ),
                ],
              ),
                              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Activity',
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5).withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                       child:DropdownButton<String>(
  items: <String>['Basol Metabolic Rate', '', 'C', 'D'].map((String value) {
    return new DropdownMenuItem<String>(
      value: value,
      child: new Text(value),
    );
  }).toList(),
  onChanged: (_) {},
)
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}
