import 'dart:io';

void main(){
  print('Enter your address:');
  var address = stdin.readLineSync();
  print('Your Address is ${address.toUpperCase()}');

}