/*Implement an employee payroll system.
Create a base Employee class with properties: name, id, and salary.
Implement a method calculateSalary() in the base class.
Create two subclasses:
- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
salary based on hours worked*/

void main() {}

class Employee {
  String name;
  int id;
  double salary;
  Employee({required this.name, required this.id, required this.salary});
  calculateSalary() {
    return salary;
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee(
      {required this.bonus,
      required super.name,
      required super.id,
      required super.salary});
  @override
  calculateSalary() {
    double sumSalary = salary + (salary * bonus);
    return sumSalary;
  }
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  PartTimeEmployee(
      {required this.hourlyRate,
      required this.hoursWorked,
      required super.name,
      required super.id,
      required super.salary});

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}
