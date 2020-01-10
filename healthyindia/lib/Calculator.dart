import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> 
{
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
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff59c8b5),
          title: Text(
            'BMI Calculator',
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
                    width: 300,
                    height: 150,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/bmi.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('BMI Calculator',
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
                    margin: EdgeInsets.only(top: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('BMI less than 18.50',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(5))),
                    child: Center(
                      child: Text('Underweight',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('BMI 18.50 - 24.99',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(5))),
                    child: Center(
                      child: Text('Healthy Weight',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.yellow[800],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('BMI 25.00 - 29.99',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(5))),
                    child: Center(
                      child: Text('Over Weight',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 10),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.red[800],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('BMI 30 or more',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 10),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.red[700],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(5))),
                    child: Center(
                      child: Text('Obesity',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Formula for calculating BMI: Weight/Height * Height',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400))
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
                      child: Text('Height in meters',
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
                    margin: EdgeInsets.only(bottom: 5,top: 5),
                    width: 185,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Weight in KG',
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5,top: 5),
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
                      controller: weightcontrol,
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
                  InkWell(
                    onTap: (){
                      bmiCalculate();
                    },
                     child: Container(
                    margin: EdgeInsets.only(bottom: 10,top: 10),
                    width: 185,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Caluclate BMI',
                          style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w500)),
                    ),
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10,top: 10),
                    width: 185,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff59c8b5).withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                       child:TextField(
                      
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: ' Your BMI is: $bmirange ',
                          hintStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),
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
                    margin: EdgeInsets.only(bottom: 10,top: 10),
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(bmistate,
                          style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500)),
                    ),
                  ),

                ],
              )
            ],
          ),
        ));
  }
}
