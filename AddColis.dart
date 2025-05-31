import 'dart:io';

void AddColis() {
  File file = File('Colis.txt');
  if (!file.existsSync()) {
    print("Error no file");
    return;
  }
  int? idClient;
  int? idColis;
  String? nomProduitColis;
  double? prixProduitColis;

  print("Enter ID Client");
  idClient = int.parse(stdin.readLineSync()!);
  print("Enter ID Colis");
  idColis = int.parse(stdin.readLineSync()!);
  print("Enter Nom Produit Colis");
  nomProduitColis = stdin.readLineSync();
  print("Enter Prix Produit Colis");
  prixProduitColis = double.parse(stdin.readLineSync()!);
  file.writeAsStringSync(
    "$idClient,$idColis,$nomProduitColis,$prixProduitColis",
  );
}
