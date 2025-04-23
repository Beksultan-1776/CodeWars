// Exercise 1.
import 'dart:math';

String numberToString({required int number}) {
  return number.toString();
}

// Exercise 2.
bool average(List<int> points, int myPoint) {
  int sumPoints = 0;

  for (var i = 0; i < points.length; i++) {
    sumPoints += points[i];
  }

  return (sumPoints / points.length).round() < myPoint;
}

// Exercise 3.
// ? Not recommended
List<int> countPositivesSumNegatives(List<int>? array) {
  if (array == null || array.isEmpty) return [];

  int numbersLen = 0;
  int negativeNumSums = 0;
  for (var i = 0; i < array.length; i++) {
    array[i] > 0 ? numbersLen++ : negativeNumSums += array[i];
  }

  return [numbersLen, negativeNumSums];
}

// Exercise 4.
// ! Bad code
String abbrevName(String name) {
  List<String> nameSplit = name.split(" ");
  List<String> abbrevName = [];

  for (var e in nameSplit) {
    abbrevName.add(e[0].toUpperCase());
  }

  return abbrevName.join(".");
}

// ? Best practice
String abbrevNameAnswer(String name) {
  return "${name[0]}.${name[name.indexOf(" ") + 1]}".toUpperCase();
}

// Exercise 5.
String evenOrOdd(int number) => number.isEven ? "Even" : "Odd";

// Exercise 6.
String smash(List<String> words) => words.join(" ");

/*
  Exercise 7.

  Write a function that removes the spaces from the string, then return the resultant string.
  Examples (Input -> Output): "Hello World !" -> "HelloWorld!"
*/
// ! Creates an intermediate list. Slower for large amounts of data
String noSpace(String x) => x.split(" ").join("");

// ? Best practice
String noSpaceAnswer(String s) => s.replaceAll(" ", "");

/*
  Exercise 8.

  Write a program that finds the summation of every number from 1 to num
  (both inclusive). The number will always be a positive integer greater than 0.
  Your function only needs to return the result, what is shown between
  parentheses in the example below is how you reach that result and it's not
  part of it, see the sample tests.

  Examples (Input -> Output): 8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)
*/

// ! Bad Practices
int summation(int n) {
  int result = 0;

  for (int i = 1; i <= n; i++) {
    result += i;
  }

  return result;
}

// ? Best Practices
int summationAnswer(int n) => n * (n + 1) ~/ 2;

/*
  Exercise 9.

  Given a non-empty array of integers, return the result of multiplying the
  values together in order.

  Example: [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24
*/

int grow(List<int> arr) {
  int result = 1;

  for (int e in arr) {
    result *= e;
  }

  return result;
}

// ? Best Practices
int growAnswer(List<int> arr) => arr.reduce((a, b) => a * b);

/*
  Exercise 10.

  Write a function that accepts a non-negative integer n and a string s as
  parameters, and returns a string of s repeated exactly n times.

  Example: 6, "I" -> "IIIIII"
*/

// ? If you need performance, use this method. Suitable for production
String repeatString(int repeat, String str) {
  StringBuffer result = StringBuffer();

  for (var i = 0; i < repeat; i++) {
    result.write(str);
  }

  return result.toString();
}

// ? For simple tasks
String repeatStringAnswer(int n, String s) => s * n;

/*
  Exercise 11.

  Complete the square sum function so that it squares each number passed into it
  and then sums the results together.

  Example: For example, for [1, 2, 2] it should return 9 (1^2 + 2^2 + 2^2 = 9)
*/

int squareSum(List<int> numbers, int degree) {
  int result = 0;

  for (var i = 0; i < numbers.length; i++) {
    result += pow(numbers[i], degree).toInt();
  }

  return result;
}

/*
  Exercise 12.

  Very simple, given a number (integer / decimal / both depending on the 
  language), find its opposite (additive inverse).

  Example: 1 -> -1, -1 -> 1
*/

num opposite(num n) => n > 0 ? -n : -n;

num oppositeAnswer(num n) => -n;

/*
  7kyu

  Exercise 13.

  Take 2 strings s1 and s2 including only letters from a to z. Return a new
  sorted string (alphabetical ascending), the longest possible, containing
  distinct letters - each taken only once - coming from s1 or s2.

  Example: 
  s1 = "xyaabbbcccc"
  s2 = "bbbccccdef"
  longest(a, b) -> "abcdefxy"
*/

void longest(String a, String b) {
  String result = "";
  List<String> firstList = a.split("");
  List<String> secondList = b.split("");
  print(firstList);
  print(secondList);
}
