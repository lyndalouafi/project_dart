import 'dart:io';

void AddProduit() {
  int? id;
  String? nomProduit;
  double? prixProduit;
  String? description;
  print("Enter ID Produit");
  id = int.parse(stdin.readLineSync()!);
  print("Enter Nom Produit");
  nomProduit = stdin.readLineSync();
  print("Enter Prix Produit");
  prixProduit = double.parse(stdin.readLineSync()!);
  print("Enter Description Produit");
  description = stdin.readLineSync();

  File file = File('Produit.txt');
  if (!file.existsSync()) {
    print("Error no file");
  }
  file.writeAsStringSync("$id,$nomProduit,$prixProduit,$description\n",
      mode: FileMode.append);
}
