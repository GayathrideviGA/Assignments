import 'dart:io';
void main() {
  print('Enter your name:');
  var name=stdin.readLineSync();
  print('What is your age:');
  var age=stdin.readLineSync();
  print('Enter your email address:');
  var email=stdin.readLineSync();
  print('Enter your phone:');
  var phone=stdin.readLineSync();
  print('User Details');
  print('------------');
  print('Name:$name');
  print('Age:$age');
  print('Email address:$email');
  print('Phone:$phone');
}
