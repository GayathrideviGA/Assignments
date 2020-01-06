import 'dart:io';

void main(){
print('Distance Between source and Destination:');
var distHometoffice = int.parse(stdin.readLineSync());

//Onlinetaxifare
int onlinetaxifare;
int after20km;
if(distHometoffice<=20){
 onlinetaxifare = 40;
 print('Your Online Taxi fare is $onlinetaxifare');
}
else
{
after20km = distHometoffice - 20;
onlinetaxifare = 40 + after20km * 10;
print('your Online Taxi fare is $onlinetaxifare ');
}

//Classictaxifare
var basefare = 15;
var classictaxifare = (5 * distHometoffice) + basefare;
print('Your Classic Taxi fare is $classictaxifare');

//If both the taxis are cost same.
if(onlinetaxifare <= classictaxifare){
    print('Choose to go for office in Online taxi');

}
else
{
  print('Choose to go for office in classic taxi');
}

}