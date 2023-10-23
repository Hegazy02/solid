//Wrong Single Responsibility

class WrongSingleResponsibility {
  employeeRegistration(var employee) {
    employee.toString().split('');
    sendEmail(employee, 'subject');
  }

  sendEmail(var employeeEmail, var subject) {
    employeeEmail.toString().length;
  }
}

//The right way

class EmployeeService {
  employeeRegistration(var employee) {
    employee.toString().split('');
    EmailService().sendEmail(employee, 'subject');
  }
}

class EmailService {
  sendEmail(var employeeEmail, var subject) {
    employeeEmail.toString().length;
  }
}
