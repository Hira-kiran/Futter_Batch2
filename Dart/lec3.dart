// •	Datatypes(bool, List, Map)
// •	Differentiate between variable and dynamic
// •	Relational operators
// •	Concatenation

void main() {
  // bool a = false;
  int b = 10;
  int a = 20;
  bool c = a < b;
  print(c);
// list
  List fruitsList = [56, 58, 67.6, 78, "flutter"];
  print(fruitsList[0]);
  // Map
  Map<String, dynamic> map = {
    "email": "hira@gmail.com",
    "email2": "dart@gmail.com",
    "age": 20,
    "decimal": 45.6,
  };
  print(map.length);

//var and dynamic
  var d = 10;
  d = 30;
  print(d);

  dynamic e = 20;
  e = "dart";
  e = 34.5;
  print(e);

  // Relational operators
// >,<,<=,>=,==,!=

  int x = 20;
  int y = 40;

  bool z = x <= y;
  print(z);

  String name = "flutter ";
  String name2 = "dart" + " " + name;
  print(name + name2);

  print("*");

  // pir^2

  int r = 20;
  dynamic area = 3.14 * r * r;
  print(area);
}

 //Assignment
// 1)	Write a program in which make rectangle using print statement (*)?
// 2)	Write a program to perform all relational operators (>, <,>=, <=).
// 3)	Write a program to subtract two constant numbers.
// 4)	Write a program to Calculate Area of Circle.
// 5)	Write a program to Calculate Area of square.


