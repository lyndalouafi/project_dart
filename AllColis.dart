import 'dart:io';

void AllColis() {
  File file = File('Colis.txt');
  if (!file.existsSync()) {
    print("File not found");
    return;
  }
  print("All Colis:");
  List<String> lines = file.readAsLinesSync();
  for (String line in lines) {
    List<String> parts = line.split(',');
    print("ID: ${parts[0]} NomProduit: ${parts[1]} Prix: ${parts[2]}");
  }
}
