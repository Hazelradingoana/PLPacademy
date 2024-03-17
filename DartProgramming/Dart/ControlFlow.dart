import 'dart:io';


// This program will take a number as input
// convert it to integer
// and check if it is greater than, less than 
// or equal to 10

void main(){
  stdout.write("Enter a number: ");
  String input = stdin.readLineSync()!;

  int number = int.parse(input);

  if (number > 10){
    print("Number is greater than 10");
  } else if (number < 10){
    print("Number is less than 10");
  } else {
    print("Number is equal to 10");
  }

}