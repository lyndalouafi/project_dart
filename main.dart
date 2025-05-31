import 'dart:io';

import 'Client.dart';
import 'Manager.dart';

void main() {
  print("Welcom to my app");
  int number;
  do {
    print("chosse number 1 or 2:");
    number = int.parse(stdin.readLineSync()!);
  } while (number != 1 && number != 2);

  if (number == 1) {
    Manager manager = Manager();
    if (manager.Login()) {
      print("Manager logged in successfully.");
    } else {
      print("Login failed.");
    }
  } else if (number == 2) {
    Client client = Client();
  }
}
