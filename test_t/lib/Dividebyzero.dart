import 'dart:io';
void main() { 
   var age = 12;
   print('Enter the experience:');
   var experience = int.parse(stdin.readLineSync()); 
   int eligibilty;  
   print(age/experience);
   try 
   { 
      eligibilty = age ~/ experience; 
   }  
   on IntegerDivisionByZeroException catch(e) 
   { 
      print(e); 
   } 
}