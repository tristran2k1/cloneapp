int getMinPrice(List<int> numbers) {
  if (numbers.isEmpty) {
    return -1;
  }
  int minNumber = numbers[0];
  for (int number in numbers) {
    if (number < minNumber) {
      minNumber = number;
    }
  }
  return minNumber;
}

int getMaxPrice(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  int maxNumber = numbers[0];
  for (int number in numbers) {
    if (number > maxNumber) {
      maxNumber = number;
    }
  }
  return maxNumber;
}
