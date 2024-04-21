void main(List<String> args) {
  Employee emp1 = RegularEmp(age: 18, name: 'ALi', salary: 2000);
  Employee emp2 = Manager(age: 30, name: 'Omer', salary: 4000, isManager: true);
}

abstract class Employee {
  late int age;
  late String name;
  late double salary;

  double calcSalary({required double hours});
}

class RegularEmp extends Employee {
  RegularEmp({required int age, required String name, required double salary});
  @override
  double calcSalary({required double hours}) {
    return ((salary / 30) / 8) * hours;
  }
}

class Manager extends Employee {
  Manager(
      {required int age,
      required String name,
      required double salary,
      required bool isManager});

  @override
  double calcSalary({required double hours}) {
    return ((salary / 30) / 8) * hours * 1.5;
  }
}
