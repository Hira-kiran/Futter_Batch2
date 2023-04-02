import 'dart:io';

void main() {
  // Loop
  /*  •	For loop
•	While loop
•	Do while loop */

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
