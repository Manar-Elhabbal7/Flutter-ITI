//Author : Manar Elhabbal

void solve() {
  var name = "Manar";
  print('My name is $name');

  final pronouns = 'her';
  //pronouns ='his';//error
  print('pronouns is $pronouns');

  var age = 21;
  age = 16;
  print('age is $age'); //6
  // age ='33';//error

  const pi = 3.14;
  int r = 2;
  print('Area of the circle = ${pi * r * r}');

  dynamic country = 'Egypt';
  country = 4;
  print(country); // 4

  String Name = 'Manar';
  int Age = 21;
  String GPA = '3.3';
  DateTime time = DateTime.now();

  print('''
  My name is $Name \n I am $Age years old
    \n and this year i have gpa = $GPA
  ''');

  String? phone;
  print(phone ?? 'No phone');
  print('The time now is : $time');
}

int main() {
  solve();
  return 0;
}

/*
Task 1 — Student Information
    • Create variables using: var, final, const, and dynamic.
    • Store: student name, age, GPA, and current time.
    • Make phone nullable using Null Safety.
    • If phone is null, print 'No Phone'.
    • Print all values.
 */
