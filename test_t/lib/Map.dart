import 'dart:core';

void main()
{
  Map namelist = {'Name':'Gayathri','Rollnum':'611716104006'};
  print(namelist);
  namelist.addAll({'Department':'CSE','Year':'IV'});
  print('Map after adding enteries: ${namelist}');
  //deletion of an item
  namelist.remove('Year');
  print('Map after deleting enteries: ${namelist}');
  //Updation of an item
  namelist.update('Name', (v) { return 'Devi'; });
  print('Map after updating entries: ${namelist}');
  namelist.forEach((k,v) => print('${k} : ${v}'));
}