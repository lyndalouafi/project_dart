import 'dart:io';

void AllCommands() {
  File commandesFile = File('Commandes.txt');
  if (!commandesFile.existsSync()) {
    print("file not found");
    return;
  }

  print("Les produits commandés :");
  List<String> commandes = commandesFile.readAsLinesSync();
  for (String line in commandes) {
    List<String> parts = line.split(',');
    print(
      "IDCommande: ${parts[0]}, IDClient: ${parts[1]},IDProduit: ${parts[2]}}",
    );
  }
}
