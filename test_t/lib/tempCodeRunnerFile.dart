void main() { 
   List empid = [101,102,103,104,105];
    
   
   try { 
      print(empid[5]);
   } 
   on IndexError { 
      print('Arrayindex out of bound'); 
   } 
   finally { 
      print('Finally block executed'); 
   } 
}