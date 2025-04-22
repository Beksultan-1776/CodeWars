// ! 1
String numberToString({required int number}) {
  return number.toString();
}

// ! 2
bool average(List<int> points, int myPoint) {
  int sumPoints = 0;

  for (var i = 0; i < points.length; i++) {
    sumPoints += points[i];
  }

  return (sumPoints / points.length).round() < myPoint;
}

// ! 3
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

// ! 4
// ? Bad code
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

// ! 5
