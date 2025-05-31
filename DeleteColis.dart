import 'dart:io';
import 'AllColis.dart';

void DeleteColis() {
  File file = File('Colis.txt');
  if (!file.existsSync()) {
    print("file not found");
    return;
  }
  List<String> updatedLines = [];
  List<String> lines = file.readAsLinesSync();
  int? idColis;
  print("Enter ID Colis");
  idColis = int.parse(stdin.readLineSync()!);

  for (String line in lines) {
    List<String> parts = line.split(',');
    if (parts[1] != idColis.toString()) {
      updatedLines.add(line);
    }
  }
  file.writeAsStringSync(updatedLines.join('\n'));
  AllColis();
}
