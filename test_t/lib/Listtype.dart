void main() {
//List Item Insertion
  print('Insertion in the list');
  List l = [25, 03, 11];
  print(l);
  l.addAll([12, 14]);
  print('List after Insertion');
  print(l);
//List Item Deletion
  print('Deletion in the list');
  l.remove(25);
  print(l);
//List Item updation
  print('Updation in the ');
  l.replaceRange(0, 0, [24]);
  print(l);
}
