import 'dart:io';

void ModifyColis() {
  File file = File('Colis.txt');
  if (!file.existsSync()) {
    print("File not found");
    return;
  }
  print("ID De Colis Modifier:");
  int? idColis = int.parse(stdin.readLineSync()!);

  List<String> lines = file.readAsLinesSync();
  for (String line in lines) {
    List<String> parts = line.split(',');
    if (parts[1] == idColis.toString()) {
      print("Choose what you want to modify:");
      print("1: ID Client");
      print("2: Nom Produit Colis");
      print("3: Prix Produit Colis");
      int? choice = int.parse(stdin.readLineSync()!);
      print("Enter the new value:");
      String? newValue = stdin.readLineSync();
      if (choice == 1) {
        parts[0] = newValue!;
      } else if (choice == 2) {
        parts[2] = newValue!;
      } else if (choice == 3) {
        parts[3] = newValue!;
      }
      file.writeAsStringSync(lines.join('\n'));
      print("Colis modified successfully!");
    }
  }
}
