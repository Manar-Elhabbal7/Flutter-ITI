//Author : Manar Elhabbal

List<Map<String, dynamic>> employees = [];

class Employee {
  static int cnt = 0;

  String? name;
  int? id;
  int? salary;
  String? phone;
  String? address;

  Employee(
    this.id,
    this.name,
    this.salary, [
    this.phone = 'N/A',
    this.address = 'N/A',
  ]) {
    cnt++;
  }

  Employee.fromMap(Map<String, dynamic> map)
    : id = map['id'],
      name = map['name'],
      salary = map['salary'],
      phone = map['phone'] ?? 'N/A',
      address = map['address'] ?? 'N/A' {
    cnt++;
  }

  Employee.intern(int id, String name) : this(id, name, 1500);

  void addEmployee() {
    employees.add({
      'id': id,
      'name': name,
      'salary': salary,
      'phone': phone,
      'address': address,
      'role': runtimeType.toString(),
      'calculatedSalary': calculateSalary(),
    });
    print("Employee '$name' (ID: $id) has been added to the database.");
  }

  double calculateSalary() {
    return (salary ?? 0).toDouble();
  }

  void displayEmployee() {
    print("ID: $id | Name: $name | Base Salary: \$$salary");
    print("Phone: $phone | Address: $address");
  }
}

class Manager extends Employee {
  double bonus;

  Manager(
    int id,
    String name,
    int salary,
    this.bonus, [
    String phone = 'N/A',
    String address = 'N/A',
  ]) : super(id, name, salary, phone, address);

  Manager.withDefaultBonus(int id, String name, int salary)
    : bonus = 500.0,
      super(id, name, salary);

  Manager.leader(int id, String name) : this(id, name, 5000, 1000.0);

  @override
  double calculateSalary() {
    return (salary ?? 0) + bonus;
  }

  @override
  void displayEmployee() {
    super.displayEmployee();
    print(
      "Role: Manager | Bonus: \$$bonus | Total Salary: \$${calculateSalary()}",
    );
  }
}

class Developer extends Employee {
  String programmingLanguage;
  int overtimeHours;

  Developer(
    int id,
    String name,
    int salary,
    this.programmingLanguage, [
    this.overtimeHours = 0,
    String phone = 'N/A',
    String address = 'N/A',
  ]) : super(id, name, salary, phone, address);

  Developer.junior(int id, String name, String lang)
    : this(id, name, 3000, lang, 0);

  Developer.senior(int id, String name, String lang)
    : this(id, name, 9000, lang, 0);

  @override
  double calculateSalary() {
    return (salary ?? 0) + (overtimeHours * 50.0);
  }

  @override
  void displayEmployee() {
    super.displayEmployee();
    print(
      "Role: Developer | Language: $programmingLanguage | Overtime Hours: $overtimeHours | Total Salary: \$${calculateSalary()}",
    );
  }
}

void main() {
  print("=== Registering Employees ===");

  Manager m1 = Manager(
    1,
    "Manar Elhabbal",
    6000,
    1500.0,
    "011xxxxxxx",
    "El mahala el kobra",
  );
  m1.addEmployee();

  Developer d1 = Developer.junior(2, "bob", "Dart");
  d1.addEmployee();

  Developer d2 = Developer(3, "alice", 5000, "Flutter", 10);
  d2.addEmployee();

  Map<String, dynamic> empData = {
    'id': 4,
    'name': 'Mona',
    'salary': 4500,
    'phone': '010xxxxxxx',
    'address': 'tanta',
  };
  Employee e1 = Employee.fromMap(empData);
  e1.addEmployee();

  print("Employees Info : ");
  m1.displayEmployee();
  print("-" * 50);
  d1.displayEmployee();
  print("-" * 50);
  d2.displayEmployee();
  print("-" * 50);
  e1.displayEmployee();
  print("-" * 50);

  print("Number of employess is $Employee.cnt");
  print("Our Employees are : ");
  for (var emp in employees) {
    print(emp);
  }
}

/*Create:
Employee
Then:
* Manager
* Developer
Requirements
* Use parameterized constructors
* Use named constructors
* Use redirect constructor
* Use optional parameters
Create functions:
* calculateSalary()
* displayEmployee()
* variable to count number of employees.
*/
