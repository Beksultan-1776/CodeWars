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
List<int> countPositivesSumNegatives(List<int>? array) {
  if (array == null || array.isEmpty) {
    return [];
  }

  int numbersLen = 0;
  int negativeNumSums = 0;
  for (var i = 0; i < array.length; i++) {
    array[i] > 0 ? numbersLen++ : negativeNumSums += array[i];
  }

  return [numbersLen, negativeNumSums];
}

// ! 4
