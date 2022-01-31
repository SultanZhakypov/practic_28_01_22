import 'dart:io';

void main(){

//tunnel
num width = 20;
num height = 30;

stdout.write('Ширина поезда :');
var widthPoezd = num.parse(stdin.readLineSync()!);
stdout.write('Высота поезда :');
var heightPoezd = num.parse(stdin.readLineSync()!);

if(widthPoezd <= (width-3) && heightPoezd <= (height-3) ){
  print("Поезд проедет");
}
else{
  print("Поезд не проедет");
}

}

