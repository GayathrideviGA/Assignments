class Communitymanager
{
  void showDetails(String name,int salary,String collegename)
  {
     print(name);
     print(salary);
     print(collegename);
  }
}
class Employee extends Communitymanager {}
class Faculty extends Employee {}
class Staff extends Employee {}
class Administrator extends Faculty {}
class Teacher extends Faculty {}
class Student extends Communitymanager{}
class Alumns extends Communitymanager{}

void main()
{
  var employee = Employee();
  var faculty = Faculty();
  var staff = Staff();
  var administrator = Administrator();
  var teacher = Teacher();
  var student = Student();
  var alumns = Alumns();

  employee.showDetails('Gayathri', 50000, 'NSIT,salem');
  faculty.showDetails('Ram', 60000, 'MEC,Nammakal');
  staff.showDetails('Arun', 30000, 'SVM,Salem');
  administrator.showDetails('Devi', 40000, 'MEC,Nammakal');
  teacher.showDetails('Anjali', 50000, 'PSG,Coimbatore');
  student.showDetails('Hari', 35000, 'KSR,trichengode');
  alumns.showDetails('Lenin', 40000, 'Salemcollege,Salem');
}
