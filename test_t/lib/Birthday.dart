import 'dart:io';

void main() {
  var numberoffriends = 31;
  print('Enter the number of chocolates in the packet:');
  var numberofchocolates = int.parse(stdin.readLineSync());
  if(numberofchocolates % numberoffriends == 0){
    print('-----------------------------------------');
    print('Ravi....You can buy the chocolate packet');
    print('-----------------------------------------');
  }
  else{
    print('-----------------------------------------------------------');
    print('Ravi....You cannot buy the chocolate packet..Choose another');
    print('-----------------------------------------------------------');
  }
}