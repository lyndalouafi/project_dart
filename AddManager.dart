import 'dart:io';

void AddManager() {
  int idManager;
  String firstNameManager;
  String lastNameManager;
  String usernameManager;
  String passwordManager;
  String emailManager;
  int numberPhoneManager;
  print("Enter ID Manager:");
  idManager = int.parse(stdin.readLineSync()!);
  print("Enter FirstName Manager:");
  firstNameManager = stdin.readLineSync()!;
  print("Enter LastName Manager:");
  lastNameManager = stdin.readLineSync()!;
  print("Enter Username Manager:");
  usernameManager = stdin.readLineSync()!;
  print("Enter Password Manager:");
  passwordManager = stdin.readLineSync()!;
  print("Enter Email Manager:");
  emailManager = stdin.readLineSync()!;
  print("Enter Number Phone Manager:");
  numberPhoneManager = int.parse(stdin.readLineSync()!);
  File file = File('ManagerAdd.txt');
  if (!file.existsSync()) {
    print("Error no file");
  }
  file.writeAsStringSync(
    "$idManager,$firstNameManager,$lastNameManager,$usernameManager,$passwordManager,$emailManager,$numberPhoneManager",
  );
}
