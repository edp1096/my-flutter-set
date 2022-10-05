import "dart:io";

Function add1 = (a, b) => a + b;

int add2(a, b) {
  print("a+b=${(a + b).toString()}");
  return a + b;
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);

  sayHello() {
    print('Hello, I am $name');
  }
}

class Student extends Person {
  Student(String name, int age) : super(name, age);
}

class Teacher extends Person {
  String title;
  Teacher(String name, int age, this.title) : super(name, age);
}

class Professor extends Teacher {
  String major;
  Professor(String name, int age, String title, this.major) : super(name, age, title);
}

void main() {
  /* var */
  var helloWorld = "Hello Dart";
  print(helloWorld);

  /* String */
  String hello = "Hello";
  String name = "Dart";

  print("Hello, $name!");
  print(hello + name + "!!");
  print("${hello + ", " + name}" + "!!");

  /* Number */
  int num1 = 77;
  double num2 = 3.141592;

  print(num1);
  print(num2);

  print(num1 + num2);
  print("${num1.toString() + " - " + num2.toString()}");

  /* Dynamic */
  dynamic dv = "Aerodynamic!!";
  print(dv);
  dv = 777;
  print(dv);

  /* List */
  List<String> list = ["A", "B", "C"];
  print(list);
  print(list[0]);

  /* Set */
  Set<String> set = {"A", "B", "C"};
  print(set);
  print(set.contains("A"));

  /* Map */
  Map<String, String> map = {"A": "Apple", "B": "Banana", "C": "Cherry"};
  print(map);
  print(map["A"]);

  Map map2 = {};
  map2.addAll({
    "A": "Air",
    "B": "Bear",
    "C": "Care",
  });
  print(map2);

  /* Boolean */
  bool isTrue = true;
  bool isFalse = false;
  print(isTrue.toString() + " " + isFalse.toString());

  /* if */
  if (isTrue) {
    print("isTrue");
  }

  /* for */
  stderr.write("for - ");
  for (int i = 0; i < 3; i++) {
    stdout.write(list[i]);
  }
  print("");

  /* foreach */
  stderr.write("foreach map - ");
  dynamic ser = "";
  map.forEach((k, v) {
    ser += "$k:$v ";
  });
  print(ser.trim());

  stderr.write("foreach list - ");
  ser = "";
  list.forEach((el) {
    ser += "$el ";
  });
  print(ser.trim());

  /* while */
  stderr.write("while - ");
  int i = 0;
  while (i < 3) {
    stdout.write(list[i]);
    i++;
  }
  print("");

  /* do-while */
  stderr.write("do-while - ");
  i = 0;
  do {
    stdout.write(list[i]);
    i++;
  } while (i < 3);
  print("");

  /* switch */
  String fruit = "Apple";
  switch (fruit) {
    case "Apple":
      print("Apple");
      break;
    case "Banana":
      print("Banana");
      break;
    case "Cherry":
      print("Cherry");
      break;
    default:
      print("No fruit");
  }

  /* function */
  print(add1(1, 2).toString() + " " + add2(2, 3).toString());

  /* class */
  var person = Person("Adam", 20);
  print(person.name + " " + person.age.toString());
  person.sayHello();

  /* class inheritance */
  var student = Student("Benjamin", 20);
  print(student.name + " " + student.age.toString());
  student.sayHello();

  /* class inheritance override */
  var teacher = Teacher("Charles", 30, "pricipal");
  print(teacher.name + " " + teacher.age.toString() + " " + teacher.title);
  teacher.sayHello();

  /* class inheritance override super */
  var professor = Professor("David", 40, "Assistant Professor", "Computer Science");
  print(professor.name + " " + professor.age.toString() + " " + professor.major);
  professor.sayHello();
}
