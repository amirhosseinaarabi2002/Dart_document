import 'dart:collection';

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
  List lst13 = [1, 2, 3];
  List lst14 = List.unmodifiable(lst13); // it means w can not change it
  // lst14.add(25);
  print(lst14);

  // list null safety
  List<String>? lst16;
  List<String?> lst17 = ["amir", null];

  print(lst16);

  // methodes that we use in lists
  List lst18 = ["amirhossein"];
  lst18.add("0190");
  lst18.addAll([1, 2, 3]); // iterable means we should insert a list as value

  lst18.insert(1, "ali"); // we give index and element
  lst18.insertAll(3, [00, 11, 22]); // its itarable

  bool res1 = lst18.remove(00); // remove value in the list
  print(res1);

  var res2 = lst18.removeAt(2); // remove index in the list
  print(res2);

  var res3 = lst18.removeLast(); // remove last item in the list
  print(res3);

  List<int> lst19 = [1, 2, 3, 4, 5, 6];
  lst19.removeRange(2, 4); // remove range from to from item in the list

  lst19.sublist(1);

  print(lst19);

  print(lst18);

  List<int> lst21 = [1, 2, 3, 4, 5, 6];
  lst21.shuffle(); // it makes our list unorganized

  print(lst21);

  List <String> lst22 = ["ali", "amir", "pouya"];
  Map <int, String> map1 = lst22.asMap(); // it make keys for our value in the list

  print(map1);

  List mixList = ["a", 1, "b", 2];
  var mixi = mixList.whereType<String>(); // it shows the values with types that we want 

  print(mixi);

  List<int> lst23 = [1, 2, 3, 4, 5, 6];
  lst23.replaceRange(3, 4, [30, 40]);

  print(lst23);

  List<int> lst24 = [1, 2, 3, 4, 5, 6];
  print(lst24.firstWhere((i) => i > 3));
  print(lst24.lastWhere((i) => i > 3));
  print(lst24.singleWhere((i) => i == 3)); // if we had more than one 3 in the list it returned error

  var x = lst24.fold(10, (i, j) => i + j); // 10 + 1 + 2 + 3 + ... = 31
  var xy = lst24.reduce((i, j) => i + j); // 1 + 2 + 3 + ... = 31
  print(x);
  print(xy);

  List <String> sportList = ["football", "soccer"];
  print(sportList.followedBy(["tennis", "swim"]).toList()); // add new items to end of the list

  print(sportList.any((i) => i.contains("soccer"))); // true
  
  print(sportList.every((i) => i.startsWith("c"))); // false

  print(sportList.take(1)); //take one item from my list and show it

  print(sportList.fold<String>("golf", (i, j) => i + j)); // concat all of the string items in the list


  // list properties
  List lst20 = [];
  lst20.add(1);
  lst20.add(2);

  print(lst20.first); // index[0] ind list 
  print(lst20.isEmpty);
  print(lst20.isNotEmpty);
  print(lst20.length);
  print(lst20.last);
  print(lst20.reversed);
  // print(lst20.single); //  if it had only 1 element otherwise it returns error


  // Sets
  // 2 diffrences with list : 1. we use {} for sets 2. in set , set removes repeated items and count them only one time

  Set<String> names = Set.from(["ali", "mmd", "hesam"]);
  names.add("reza");

  print(names);

  Set<int> numbers = Set();

  numbers.addAll({10, 20, 30, 30, 30});

  print(numbers);

  // HashSet vs LinkedHashSet=normal set
  List lst = [1, 30, 10, 1, 2, 50];

  Set hashSet = HashSet();
  Set linkedHashSet = LinkedHashSet();

  for (var item in lst) {
    hashSet.add(item);
    linkedHashSet.add(item);
  }

  print("hashSet ...");
  hashSet.forEach((f) => print(f));

  print("linkedHashSet ...");
  linkedHashSet.forEach((e) => print(e));

  // properties for sets
  Set numberSet = Set();
  numberSet.add(45);
  numberSet.add(55);
  numberSet.add(65);

  print(numberSet.first);
  print(numberSet.isEmpty);
  print(numberSet.isNotEmpty);
  print(numberSet.last);
  print(numberSet.length);
  // print(numberSet.single);


  // set methods
  numberSet.addAll([1, 2, 3]);
  print(numberSet.contains(24));
  print(numberSet.containsAll([[24, 25, 26]]));

  Set otherSet = {1, 2, 3, 4, 99};

  print(numberSet.difference(otherSet));
  print(numberSet.intersection(otherSet));
  print(numberSet.lookup(1)); // it returns that item if there is in set otherwise it returns null
  print(numberSet.remove(2));
  print(numberSet);


  numberSet.clear(); // remove everything

  // convert list to set

  List<int> convertToSet = [1, 2, 3, 4];

  print(convertToSet);

  Set convertedList = convertToSet.toSet();

  print(convertedList);


  // map 
  var data = {"name": "amir", "age": 18};
  Map words = {1: "user", 2: "pass", 3: "email"};
  Map<int, String> word1 = {1: "user", 2: "pass", 3: "email"};

  word1[4] = "instagram";

  print(word1);

  Map<int, String> word3 = Map();
  print(word3);

  Map<int?, String?>? word4;
  print(word4);

  // map properties
  Map<int, String> word2 = <int, String>{1: "user", 2: "pass", 3: "email"};

  print(word2.isEmpty);
  print(word2.isNotEmpty);
  print(word2.keys);
  print(word2.values);
  print(word2.length);



}
