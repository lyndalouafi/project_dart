import 'User.dart';
import 'dart:io';

class Client extends User {
  double prixColis = 0.0;
  int numberColis = 0;
  String addrasse = '';
  String? codePromo;

  Client() : super() {
    File file = File('Produit.txt');
    if (!file.existsSync()) {
      print("Error no file");
    }
    List<String> lines = file.readAsLinesSync();
    for (String line in lines) {
      List<String> parts = line.split(',');
      print(
        "ID: ${parts[0]}, Nom: ${parts[1]}, Prix: ${parts[2]}, Description: ${parts[3]}",
      );
    }
    print("chosse produit ");
    print("Enter ID produit");
    int idProduit = int.parse(stdin.readLineSync()!);

    print("Enter YOUR ID ");
    int idClient = int.parse(stdin.readLineSync()!);
    File commandesFile = File('Commandes.txt');
    if(!commandesFile.existsSync()) {
      print("file not found");
      return;
    }

    List<String> produitlines = file.readAsLinesSync();
    for (String produitlines in lines) {
      List<String> parts = produitlines.split(',');
      if(parts[0] == idProduit.toString()) {
        String nomProduit = parts[1].trim();
        String nouvelleCommande = "$idClient,$idProduit,$nomProduit";
        commandesFile.writeAsStringSync(
          nouvelleCommande + "\n",
          mode: FileMode.append,
        );
      }
    }

  }
  void CodePromo() {
    print("Enter Code Promo:");
    codePromo = stdin.readLineSync();
  }
}
