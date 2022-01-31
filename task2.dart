import 'dart:io';

void main(){
  stdout.write("Температура °C :");
  var fahren = num.parse(stdin.readLineSync()!);

  print((fahren * 1.8) +32) ;

  stdout.write("Температура °F :");
  var celc = num.parse(stdin.readLineSync()!);

  print((celc - 32) ~/ 1.8);

}




