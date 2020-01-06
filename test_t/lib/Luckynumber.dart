import 'dart:math';
void main() {
  var min = 1;
  var max = 11;
  var luckynumber = min + Random().nextInt(max - min);
  print('$luckynumber');
  switch (luckynumber.toString()) {
    case '1': print('Your lucky number is 1 and your day is going to be Awesome');
    break;
    case '2': print('Your lucky number is 2 and you are going to recieve an award');
    break;
    case '3': print('Your lucky number is 3 and your are going to have a great day');
    break;
    case '4': print('Your lucky number is 4 and your long time wish is going to be fulfilled');
    break;
    case '5': print('Your lucky number is 5 and you are going to meet an awesome person');
    break;
    case '6': print('Your lucky number is 6 and you are going to have a happiest day');
    break;
    case '7': print('Your lucky number is 7 and you will achieve your goals');
    break;
    case '8': print('Your lucky number is 8 and your wishes will get fulfilled');
    break;
    case '9': print('Your lucky number is 9 and you must be wait for things to happen');
    break;
    case '10': print('Your lucky number is 10 and your day is moderate');
    break;
    default:
  }
}