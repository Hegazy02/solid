//Wrong Single Responsibility
//On function scope

class test {
  customerSalesReport() {
    //Get customer data
    var customer = getConsumer();
    //Get customer sales
    var sales = getSales();
    //Create report data
    String reportTitle = 'Sales report for $customer';
    String reportData = 'Report Time : ${DateTime.now()}';
    reportData = reportData + 'Total sales : ${sales}';
    //الحسبه دي مينفعش تكون هنا لازم اعملها فنكشن لوحدها
    reportData = reportData +
        'Credit Balance : ${sales - (sales * 0.14) - (sales * 0.2)}';
    return reportData;
  }

  getConsumer() {
    return "consumer";
  }

  getSales() {
    return 400;
  }
}

//The right way
customerSalesReport() {
  //Get customer data
  var customer = getConsumer();
  //Get customer sales
  var sales = getSales();
  //Create report data
  String reportTitle = 'Sales report for $customer';
  String reportData = 'Report Time : ${DateTime.now()}';
  reportData = reportData + 'Total sales : ${sales}';
  reportData = getCreditBalance(reportData, sales);
  return reportData;
}

getConsumer() {
  return "consumer";
}

getSales() {
  return 400;
}

getCreditBalance(var reportData, var sales) {
  return reportData +
      'Credit Balance : ${sales - (sales * 0.14) - (sales * 0.2)}';
}
