import 'AddColis.dart';
import 'AddManager.dart';
import 'AddProduit.dart';
import 'AllColis.dart';
import 'AllCommands.dart';
import 'AllProduits.dart';
import 'DeleteColis.dart';
import 'DeleteProduit.dart';
import 'ModifyColis.dart';
import 'User.dart';
import 'dart:io';

class Manager extends User {
  bool Login() {
    print("Enter Username:");
    username = stdin.readLineSync();
    print("Enter Password:");
    password = stdin.readLineSync();

    File file = File('Manager.txt');
    if (!file.existsSync()) {
      print("Error: Manager.txt file not found.");
      return false;
    }

    List<String> lines = file.readAsLinesSync();
    for (String line in lines) {
      List<String> parts = line.split(',');
      if (parts[0] == username && parts[1] == password) {
        int number;
        do {
          print("\n========= Manager Menu =========");
          print("1: Add Produit");
          print("2: Delete Produit");
          print("3: Add Colis");
          print("4: Modify Colis");
          print("5: Delete Colis");
          print("6: Add Manager");
          print("7: Show all colis");
          print("8: Show all produits");
          print("9: Show all Commands");
          print("0: Exit");
          print("Choose number:");
          number = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

          switch (number) {
            case 1:
              AddProduit();
              break;
            case 2:
              DeleteProduit();
              break;
            case 3:
              AddColis();
              break;
            case 4:
              ModifyColis();
              break;
            case 5:
              DeleteColis();
              break;
            case 6:
              AddManager();
              break;
            case 7:
              AllColis();
              break;
            case 8:
              AllProduits();
              break;
            case 9:
              AllCommands();
              break;
            case 0:
              print("Exiting...");
              break;
            default:
              print("Invalid choice, please try again.");
          }

        } while (number != 0);

        return true;
      }
    }

    print("Login failed. Invalid username or password.");
    return false;
  }

  bool? presence;
}
