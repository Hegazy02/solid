//Wrong Single Responsibility
class WrongSingleResponsibility2 {
  charge(var amount) {
    //initialize bank data
    //send request to the bank
  }

  createReport(var employeeEmail, var subject) {
    //format a report
    employeeEmail.toString().length;
  }

  printReport() {
    //send a printing command to the printer
  }
  savePayment() {
    //saving to DB
  }
}

//The right way

class PaymentProccess {
  createPayment(var amount, var employeeEmail, var subject) {
    charge(amount);
    Reports().createReport(employeeEmail, subject);
    Printing().printReport();
    savePayment();
  }

  charge(var amount) {
    //initialize bank data
    //send request to the bank
  }
  savePayment() {
    //saving to DB
  }
}

class Reports {
  createReport(var employeeEmail, var subject) {
    //format a report
    employeeEmail.toString().length;
  }
}

class Printing {
  printReport() {
    //send a printing command to the printer
  }
}
