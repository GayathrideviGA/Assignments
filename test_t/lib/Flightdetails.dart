import 'dart:io';

class Flightdetails {
  void getFlightDetails() {}
  void bookFlights() {}
}

class Airasia implements Flightdetails {
  @override
  void getFlightDetails() {
    print('----------------------------------');
    print('The available airasia flights are:'.toUpperCase());
    print('1.Delhi to Bangalore @ 4:00pm');
    print('----------------------------------');
  }

  @override
  void bookFlights() {
    print('Bookflights,Enter number of seats you need to book:');
    int userbook = int.parse(stdin.readLineSync());
    int flightseatcount = 3;
    if (userbook != 0) {
      print('${userbook} seats were booked');
    } else {
      print('you have not booked any flights');
    }
  }
}

class Emirates implements Flightdetails {
  @override
  void getFlightDetails() {
    print('----------------------------------');
    print('The available Emirates flights are:'.toUpperCase());
    print('1.Delhi to Bangalore @ 3:00pm');
     print('----------------------------------');
  }

  @override
  void bookFlights() {
    print('Bookflights,Enter number of seats you need to book:');
    int userbook = int.parse(stdin.readLineSync());
    int flightseatcount = 12;
    if (userbook != 0) {
      print('${userbook} seats were booked');
    } else {
      print('you have not booked any flights');
    }
  }
}

class Indigo implements Flightdetails {
  @override
  void getFlightDetails() {
    print('----------------------------------');
    print('The available indigo flights are:'.toUpperCase());
    print('1.Delhi to Bangalore @ 2:00pm');
     print('----------------------------------');
  }

  @override
  void bookFlights() {
    print('Bookflights,Enter number of seats you need to book:');
    int userbook = int.parse(stdin.readLineSync());
    int flightcseatcount = 2;
    if (userbook != 0) {
      print('${userbook} seats were booked');
    } else {
      print('you have not booked any flights');
    }
  }
}

void main() {
  // Flightdetails flightdetails = new Flightdetails();
  Airasia airasia = Airasia();
  Emirates emirates = Emirates();
  Indigo indigo = Indigo();

  airasia.getFlightDetails();
  emirates.getFlightDetails();
  indigo.getFlightDetails();
  airasia.bookFlights();

  
  emirates.bookFlights();

  
  indigo.bookFlights();
}
