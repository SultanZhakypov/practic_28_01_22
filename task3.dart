import 'dart:io';

void main(){
 Hamburger smallBurger = Hamburger("1:Маленький бургер",50,40);
 Hamburger bigBurger = Hamburger("2:Большой бургер",100,40);
 
 Fillings cheese = Fillings("Сыр",10,20);
 Fillings salat = Fillings("Салат",20,5);
 Fillings kartofel = Fillings("Картофель",15,10);

 Add sauce  = Add("Приправа", 15, 0);
 Add mayo = Add("Майонез", 20, 5);

 print("Welcome to McDonalds");
 smallBurger.menu();
 bigBurger.menu();
 
 var burger = num.parse(stdin.readLineSync()!);
 if (burger == 1) {
   print("1:${cheese.name}");
   print("2:${salat.name}");
   print("3:${kartofel.name}");
   print("4:Без начинки");

   var small = num.parse(stdin.readLineSync()!);
 if(small == 1){
   print('Итого :${smallBurger.price! + cheese.price!} сом ${smallBurger.calori! + cheese.calori!} калорий');
 }
 else if(small == 2){
   print('Итого :${smallBurger.price! + salat.price!} сом ${smallBurger.calori! + salat.calori!} калорий');
 }
 else if(small == 3){
   print('Итого :${smallBurger.price! + kartofel.price!} сом ${smallBurger.calori! + kartofel.calori!} калорий');
 }else {
   print("Итого :${smallBurger.price} сом");
 }
 
 }
  if (burger == 2){
   print("1:${cheese.name}");
   print("2:${salat.name}");
   print("3:${kartofel.name}");
   print("4:Без начинки");

    var big = num.parse(stdin.readLineSync()!);
  if(big == 1){
   print('Итого :${bigBurger.price! + cheese.price!} сом ${bigBurger.calori! + cheese.calori!} калорий');
 }
 else if(big == 2){
   print('Итого :${bigBurger.price! + salat.price!} сом ${bigBurger.calori! + salat.calori!} калорий');
 }
 else if(big == 3){
   print('Итого :${bigBurger.price! + kartofel.price!} сом ${bigBurger.calori! + kartofel.calori!} калорий');
 }
 else{
   print('Итого :${bigBurger.price} сом');
 }
 
 }
 
 
}

class Hamburger {

String ? name;
num ? price;
num ? calori;

Hamburger(this.name, this.price , this.calori,);

menu(){
  print("$name -- $price сом, $calori калорий");
}
}

class Fillings extends Hamburger{
  Fillings(String? name, num? price, num? calori)
   : super(name, price, calori);

}

class Add extends Hamburger{
  Add(String? name, num? price, num? calori) 
   : super(name, price, calori);

}