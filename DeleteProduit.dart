import 'dart:io';
import 'AllProduits.dart';

void DeleteProduit() {
  File file = File('Produit.txt');
  if (!file.existsSync()) {
    print("file not found");
    return;
  }
  List<String> updatedLines = [];
  List<String> lines = file.readAsLinesSync();
  int? id;
  print("Enter ID Produit");
  id = int.parse(stdin.readLineSync()!);

  for (String line in lines) {
    List<String> parts = line.split(',');
    if (parts[0] != id.toString()) {
      updatedLines.add(line);
    }
  }
  file.writeAsStringSync(updatedLines.join('\n'));
  AllProduits();
}
