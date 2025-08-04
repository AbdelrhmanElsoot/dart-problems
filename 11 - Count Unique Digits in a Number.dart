void main() {
  print(countUniqeNumbers(number: 1133554229));
}

List<int> numbersListFn({required int number}) {
  int _number = number;
  List<int> numbers = [];
  while (_number > 0) {
    numbers.add(_number % 10);
    _number = (_number / 10).floor();
  }
  return numbers;
}

List<int> uniqeListNumbersFn({required List numbers}) {
  List<int> uniqeListNumbers = [];
  int length = numbers.length;
  int check = 0;
  for (int i = 0; i < length; i++) {
    check = 0;
    int uniqeLength = uniqeListNumbers.length;
    for (int j = 0; j < uniqeLength; j++) {
      if (numbers[i] == uniqeListNumbers[j]) {
        check = 1;
      }
    }
    if (check == 0) {
      uniqeListNumbers.add(numbers[i]);
    }
  }

  return uniqeListNumbers;
}

int countUniqeNumbers({required int number}) {
  int count = 0;
  List numbers = numbersListFn(number: number);
  List uniqeNumbersLsit = uniqeListNumbersFn(numbers: numbers);
  count = uniqeNumbersLsit.length;

  return count;
}
