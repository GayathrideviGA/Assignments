import 'dart:io';
void main() {
  print('Enter the country name:');
  //var countryname = stdin.readLineSync().toLowerCase();
  var product1 = 500;
  var product2 = 345;
  var product3 = 670;
  var product4 = 400;
  var totalamount = (product1+product2+product3+product4).toDouble();
  print('1. Press 1 for getting your bill in Indian Rupees');
  print('2. Press 2 for getting your bill in China yuan');
  print('3. Press 1 for getting your bill in Unites states dollar');
  print('4. Press 1 for getting your bill in Europe euro');
  print('5. Press 1 for getting your bill in Vietnam VND');
  var choice = stdin.readLineSync();
  switch (choice) {
      case '1':
      print('Your Total bill is Rs $totalamount');
      break;
      case '2':
      totalamount = 10.22 * totalamount;
      print('Your Total bill is ¥ $totalamount');
      break;
      case '3':
      totalamount = 71.34 * totalamount ;
      print('Your Total bill is USD $totalamount');
      break;
      case '4':
      totalamount = 79.84 * totalamount ;
      print('Your Total bill is EUR $totalamount');
      break;
      case '5':
      totalamount = 300 * totalamount ;
      print('Your Total bill is VND $totalamount');
      break;
    default: print('Your country is not available in the list');
  }
}