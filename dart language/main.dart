// •	User input/output
// •	Logical operators
// •	Increment/decrement operator
// •	Assignment operator
// •	Conditional operators

import 'dart:io';

void main() {
  // •	User input/output
  // print("Enter your name:");
  /*  stdout.write("Enter your name:");
  var name = stdin.readLineSync();
  print(name);
  print("your name is $name");
  int age = int.parse(stdin.readLineSync()!);
  print("Your age is $age");
  double num = double.parse(stdin.readLineSync()!);
  print(num); */
// •	Logical operators
// &&, || , !

  /*  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  bool result = !(num1 < num2);
  print(result); */

// •	Increment/decrement operator
// ++, --

  /*  int n = 23;
  n--;
  // n = n + 1;
  print(n); */

// •	Assignment operator
// +=, -=, *=, /=

  /*  double a = 10;
  a /= 3;
  print(a); */
  //  •	Conditional operators

  // ?, :

  // int x = 20;
  // int y = 30;
  // String z = (x > y) ? " condition is true" : "condition is false";
  // print(z);

  int n = int.parse(stdin.readLineSync()!);
  // if statment

  /*  if (n > 10) {
    print("n is greater to 10");
  } else if (n < 10) {
    print("n is less then 10");
  } else if (n >= 10) {
    print("n is equal to 10");
  } else {
    print("FAILED");
  }
 */
  switch (n) {
    case 10:
      print("value is 10");
      break;
    case 20:
      print("value is 20");
      break;
    case 50:
      print("value is 50");
      break;
    default:
      print("false");
  }
}


// Assignment
// 1)	Write a program to calculate the sum of the first 10 natural numbers.
// 2)	Write a program to enter two numbers and display its sum.
// 3)	Write a program that reads a set of integers, and then prints the sum of the even and odd integers.
// 4)	Write a program to print following:
//     *
//    ***
//   *****
//  *******
// *********
// 5)	How to convert feet into meter based on user input.

