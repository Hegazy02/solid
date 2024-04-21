abstract class User {
  final String name;
  final int age;

  User(this.name, this.age);
}

class Student extends User {
  final int grade;
  Student(super.name, super.age, this.grade);
}

class Teacher extends User {
  final int lessonsNumber;
  Teacher(super.name, super.age, this.lessonsNumber);
}
