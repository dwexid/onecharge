import 'dart:io';


String readStr(String instruction) {
  print(instruction);
  return stdin.readLineSync()!;
}

int readInt(String instruction) {
  print(instruction);
  return int.parse(stdin.readLineSync()!);
}