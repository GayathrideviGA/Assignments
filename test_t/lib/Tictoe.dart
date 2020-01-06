import 'dart:io';
import 'dart:core';



void main(List<String> args) {
  int player = 1, i;
  String mark;
  
  List<int> tictoctoe = List<int>();
  tictoctoe.addAll([1, 2, 3]);

  tictoctoe.addAll([4, 5, 6]);

  tictoctoe.addAll([7, 8, 9]);
  
  int checkwin(){
    if ('${tictoctoe[1]}' == '${tictoctoe[2]}' && '${tictoctoe[2]}' == '${tictoctoe[3]}') {
      return 1;
    } else if ('${tictoctoe[4]}' == '${tictoctoe[5]}' && '${tictoctoe[5]}' == '${tictoctoe[6]}') {
      return 1;
    } else if ('${tictoctoe[7]}' == '${tictoctoe[8]}' && '${tictoctoe[8]}' == '${tictoctoe[9]}') {
      return 1;
    } else if ('${tictoctoe[1]}' == '${tictoctoe[4]}' && '${tictoctoe[4]}' == '${tictoctoe[7]}') {
      return 1;
    } else if ('${tictoctoe[2]}' == '${tictoctoe[5]}' && '${tictoctoe[5]}' == '${tictoctoe[8]}') {
      return 1;
    } else if ('${tictoctoe[3]}' == '${tictoctoe[6]}' && '${tictoctoe[6]}' == '${tictoctoe[9]}') {
      return 1;
    } else if ('${tictoctoe[1]}' == '${tictoctoe[5]}' && '${tictoctoe[5]}' == '${tictoctoe[9]}') {
      return 1;
    } else if ('${tictoctoe[3]}' == '${tictoctoe[5]}' && '${tictoctoe[5]}' == '${tictoctoe[7]}') {
      return 1;
    } else if ('${tictoctoe[1]}' != '1' && '${tictoctoe[2]}' != '2' && '${tictoctoe[3]}' != '3' &&
        '${tictoctoe[4]}' != '4' && '${tictoctoe[5]}' != '5' && '${tictoctoe[6]}' != '6' && '${tictoctoe[7]}'
        != '7' && '${tictoctoe[8]}' != '8' && '${tictoctoe[9]}' != '9') {
      return 0;
    } else {
      return  - 1;
    }
  };

  do {
  print('${tictoctoe[0]} | ${tictoctoe[1]} | ${tictoctoe[2]}');

  print('${tictoctoe[3]} | ${tictoctoe[4]} | ${tictoctoe[5]}');

  print('${tictoctoe[6]} | ${tictoctoe[6]} | ${tictoctoe[8]}');

    player = (player % 2) != null ? 1 : 2;

    print('Player ${player},Enter a number:');
    int choice = int.parse(stdin.readLineSync());
    mark = (player == 1) ? 'X' : 'O';
       if (choice == 1 && '${tictoctoe[1]}' == '1')
            tictoctoe[1] = int.parse(mark);
            
        else if (choice == 2 && '${tictoctoe[2]}' == '2')
            tictoctoe[2] = int.parse(mark);
            
        else if (choice == 3 && '${tictoctoe[3]}' == '3')
            tictoctoe[3] = int.parse(mark);
            
        else if (choice == 4 && '${tictoctoe[4]}' == '4')
            tictoctoe[4] = int.parse(mark);

        else if (choice == 5 && '${tictoctoe[5]}' == '5')
            tictoctoe[5] = int.parse(mark);
            
        else if (choice == 6 && '${tictoctoe[6]}' == '6')
            tictoctoe[6] = int.parse(mark);
            
        else if (choice == 7 && '${tictoctoe[7]}' == '7')
            tictoctoe[7] = int.parse(mark);
            
        else if (choice == 8 && '${tictoctoe[8]}' == '8')
            tictoctoe[8] = int.parse(mark);
            
        else if (choice == 9 && '${tictoctoe[9]}' == '9')
            tictoctoe[9] = int.parse(mark);
            
        else
        {
            print("Invalid move ");

            player--;
           // getch();
        }
        i = checkwin();

        player++;
  } while (i == -1);
  print('${tictoctoe[0]} | ${tictoctoe[1]} | ${tictoctoe[2]}');

  print('${tictoctoe[3]} | ${tictoctoe[4]} | ${tictoctoe[5]}');

  print('${tictoctoe[6]} | ${tictoctoe[6]} | ${tictoctoe[8]}');
  if(i == 1)
  print('==>Player ${--player} win');
  else
  print('Game draw');
  return ;
}
