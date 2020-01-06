
import 'dart:math';
void main() {
  var head = 1;
  var min = 1;
  var max = 3;
  var flip = min + Random().nextInt(max - min);
  print(flip);
 
 if(flip == head){
    print('---------------');
    print('---------------');
    print('You Tossed HEAD');
    print('---------------');
    print('---------------');
  }
  else{
    print('---------------');
    print('---------------');
    print('You Tossed Tail');
    print('---------------');
    print('---------------');
  }
}