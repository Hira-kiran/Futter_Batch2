import 'dart:io';

// Lecture # 8:                  
// Loops
// •	For loop
// •	While loop
// •	Do while loop

void main() {
  // int i = 0;
  //1st iteration i=0
  //2nd i=1 , 3rd i=2
  // i=4
  // i=5
// For loop
  print("Enter your number:");
  // int x = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 50; i++) {
    if (i % 2 == 0) {
      print("Even number $i ");
    } else {
      print("Odd number $i");
    }
  }
  // while loop
  /*  int n = 0;
  while (n < 10) {
    print("true");
    n++;
  } */

//do while loop
  // int n = 0;
  /*  do {
    print("hellow");
    n++;
  } while (n == 20); */
}


// Assignment
// 1)	Write a program that displays counting form 1 to 10 using while loop.
// 2)	Write a program that displays first five numbers with their square using while loop.
// 3)	Write a program that display back counting from 10 to 1 using do while loop.
// 4)	Write a program that display product of all odd numbers from 1 to 10 using for loop.
