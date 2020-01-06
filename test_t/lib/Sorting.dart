
import 'dart:io';

void main(List<String> args)
    {
        print('Enter a Number:');
        var number = int.parse(stdin.readLineSync());
        var sortedNumber = 0;
        for (var i = 9; i >= 0; i--) {
            var tmpNumber = number;
            while (tmpNumber > 0) {
                var digit = (tmpNumber % 10);
                if (digit == i) {
                    sortedNumber *= 10;
                    sortedNumber += digit;
                }
                tmpNumber ~/= 10;
            }
        }
    print(sortedNumber);
    }