void main() 
{
  Set empid = {1,2,3,4,5};
  print('Initial SET: ${empid}');
  empid.add(6);
  empid.addAll([7,8,9,10]);
  print('SET after insertion: ${empid}');
  empid.remove(2);
  print('SET after deletion: ${empid}');
  
}