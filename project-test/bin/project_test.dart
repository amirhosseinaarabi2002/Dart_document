void main(List<String> arguments) {
  print('Hello world!'); //everything should be in main component for showing

  String firstName;

  firstName = "beni";

  print("My name is $firstName");

  //numbers

  int age = 11;

  double weight = 72.5;

  print("I am $age years old and weigh $weight kg");

  int num1, num2, num3, num4;
  num1 = 10;
  num2 = 20;
  num3 = 30;
  num4 = num3 * 3;
  print("The result is $num4");

  //null safety
  int? number1;
  print("The result is $number1");

  number1 = 0;
  print(number1);

  //type recognition
  num number5 = 70.7;
  print(number5.runtimeType);

  //type changing
  var aliAge = "20";
  var sumAge = num.parse(aliAge);

  print(sumAge.runtimeType);

  // absolute, ceil(for getting bigger), compare to(> 1, = 0, < -1), floor(for getting smaller), reminder(baghi mande taghsim), round(gerd kardan), truncate(delete trunc part)
  num a = -25.28;
  num b = a.abs();
  int c = a.ceil();
  int d = 10;
  num e = a.floor();
  num f = a.round();
  int g = a.truncate();

  print(a);
  print(b);
  print(c);
  print(d.compareTo(12));
  print(e);
  print(e.remainder(3));
  print(f);
  print(g);

  // converting types to each other
  int amirAge = 22;
  var amirAgeDouble = amirAge.toDouble();
  var amirAgeString = amirAge.toString();

  print(amirAgeDouble);
  print(amirAgeString);

  // isNegative, sign(a>0 => 1 , a=0 => 0 , a<0 => -1)
  num num8 = 10;
  num num9 = -20;

  print(num9.isNegative);
  print(num8.sign);

  //operators => +, -, *, /, ~/(ghesmate sahih), %(baghi mande), num1++, num1--
  // comparison operators => <, >, <=, >=, ==, !=

  // type test operators
  var n = 2;
  print(n is int);

  double m = 2.8;
  var num5 = m is! int;

  print(num5);

  // entesab operators => +=, -=, *=, /=, %=
  // and => && , or => ||

  // ternary conditions
  var numberT = 15;
  var result =
      numberT > 12 ? "number is bigger than 12" : "number is less then 12";

  print(result);

  var amir;
  var hasan = 28;
  var res = amir ?? hasan;

  print(res);

  // string
  var react = """
  amir ali is
   dead like a
    hero
     """;

  print(react);

  // avoiding null safty error
  String node = "";

  print(node);
  // OR
  String? node2;

  print(node2);

  // concatination and repeatation
  String pwa = "pwa ";
  String npm = "npm";

  print(pwa + npm);
  print(pwa * 2);
  print("my course is ${"$npm course"} & $pwa");

  // strings properties
  String str = " Java , node , next , nest ";

  print(str.isEmpty);
  print(str.length);
  print(str.toLowerCase());
  print(str.toUpperCase());
  print(str.trim()); // for removing spaces from begining and end of our text
  print(str.replaceAll("Java", "Javascript"));
  print(str.split(",")); // separate with , pattern
  print(str.substring(8)); // start and show from whitch index
  print(str.toString());
  print(str.contains("j"));
  print(str.startsWith("java"));
  print(str.endsWith(" "));
  print(str.indexOf(
      "n", 9)); // it returns the index of first character that you entered

  print(
      r"amirhossein aarabi is \n a rebelious guy but \t he is quite smart and unstoppable"); // using raw string

  // booleans
  bool test;
  test = 12 > 5;

  print(test);

  bool first = false;

  if (first) {
    print("first is true");
  } else {
    print("first is false");
  }

  // lists
  var lst1 = List.filled(5, "ali"); // 1. fixed lenght lists

  print(lst1);

  List lst2 = List.filled(6, 0);
  List lst3 = List<int>.filled(7, 9);

  print(lst3);

  // 2.growle lists
  var lst5 = [1, 2, 3];
  List lst6 = [1, 2, 3];
  List<int> lst7 = [8, 9, 10];
  List lst8 = [];
  lst5[0] = 20;
  lst5.add(55);

  print(lst5);

  // name constructor genetrate
  List lst9 = List<int>.generate(10, (n) => n * n);
  print(lst9);

  List lst10 = List<int>.generate(5, (k) => k % 2 == 0 ? 0 : 1,
      growable: true); // grownable = true is default
  print(lst10);
  lst10.add(2);
  print(lst10);

  // name constructor of and from
  List lst11 = List<int>.of(<int>[1, 2, 3, 4, 5]);
  print(lst11);

  List lst12 = List.of(lst6, growable: true);
  print(lst12);

  List lst15 = List.from(lst11, growable: true);
  print(lst15);

  // name constructor unmodifible
  List lst13 = [1,2,3];
  List lst14 = List.unmodifiable(lst13); // it means w can not change it
  // lst14.add(25);
  print(lst14);

  // list null safety
  List <String>? lst16;
  List <String?> lst17 = ["amir", null];

  print(lst16);


  
}
