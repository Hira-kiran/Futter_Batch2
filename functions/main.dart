// Lecture # 10: Functions
// •	Functions
// •	Functions with parameters
// •	Async Function
// •	Future, await

void main() {
  add();
  print(sub());
  print(name());
  futureFun();
}

void futureFun() async {
  await Future.delayed(Duration(seconds: 2));
  print("this is future fun");
}

void add({int num1 = 10, int num2 = 20}) {
  int r = num1 + num2;
  print(r);
  print("object");
}

int sub() {
  int num1 = 10;
  int num2 = 20;
  int r = num1 - num2;
  print(r);
  return 0;
}

String name({String name="hh"}) {
  return name;
}

// Assignment
// 1)	Write a program that display a message “Programming makes life interesting” using function.
// 2)	Write a program that input two number and performs all arithmetic operations using function.
// 3)	Write a program in which display your name using async function in which wait 30 milliseconds.
