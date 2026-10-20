class Jeepney {
  String route;
  int capacity;
  double _fare;

  Jeepney(this.route, this.capacity, double initialFare) : _fare = initialFare;

  double get fare => _fare;

  void updateFare(double newFare) {
    if (newFare > 0) {
      _fare = newFare;
      print("Fare for '$route' updated to ₱${_fare.toStringAsFixed(2)}");
    } else {
      print("Invalid fare amount!");
    }
  }

  void displayInfo() {
    print("Route: $route | Seats: $capacity | Standard Fare: ₱${_fare.toStringAsFixed(2)}");
  }

  void boardPassengers(int passengerCount) {
    if (passengerCount <= capacity) {
      print("$passengerCount passengers boarded the $route jeepney.");
    } else {
      print("Warning: $passengerCount passengers exceed capacity ($capacity max seats)!");
    }
  }
}

void main() {
  print("=== Jeepney Fleet Management System ===\n");

  Jeepney jeep1 = Jeepney("Quiapo - Cubao", 20, 13.00);
  Jeepney jeep2 = Jeepney("Novaliches - Blumentritt", 24, 15.00);
  Jeepney jeep3 = Jeepney("PITX - Lawton", 18, 14.00);

  List<Jeepney> jeepneyFleet = [jeep1, jeep2, jeep3];

  print("--- Fleet Overview ---");
  for (var jeep in jeepneyFleet) {
    jeep.displayInfo();
  }

  print("\n--- Testing Behaviors & Encapsulation ---");
  
  jeep1.boardPassengers(15);
  print("Current fare for ${jeep1.route}: ₱${jeep1.fare.toStringAsFixed(2)}");
  jeep1.updateFare(15.00);
  jeep1.displayInfo();
}
