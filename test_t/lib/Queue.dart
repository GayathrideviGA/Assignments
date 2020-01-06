import 'dart:io';
import 'dart:math';

void main(List<String> args)
    {
        int sr = int.parse(stdin.readLineSync());

        int n = Random().nextInt(sr);
        List<int> a = new List<int>(n);
        int b = 0;
        int count = 1;
        while (n != 0) {
            a[b] = Random().nextInt(sr);
            if (b != 0) {
                if (a[b] < a[b - 1]) {
                    count++;
                }
            }
            b++;
            n--;
        }
       print(count);
    }