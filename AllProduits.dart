import 'dart:io';

void AllProduits() {
  File file = File('Produit.txt');
  if (!file.existsSync()) {
    print("File not found");
    return;
  }
  print("All Produits:");
  List<String> lines = file.readAsLinesSync();
  for (String line in lines) {
    List<String> parts = line.split(',');
    print(
      "ID: ${parts[0]} NomProduit: ${parts[1]} Prix: ${parts[2]} Description: ${parts[3]}",
    );
  }
}
