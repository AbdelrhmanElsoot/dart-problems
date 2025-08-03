void main() {
  int number = 1635;
  int sortNumber = numberSortFn(number: number);
  print(sortNumber);
}

//create Method to change number from int to list of numbers
//Method to sort Numbers list
// change list to int

List<int> changeToListFn({required int number}) {
  List<int> numbers = [];
  while (number > 0) {
    numbers.add(number % 10);
    number = (number / 10).floor();
  }
  return numbers;
}

List<int> listSortingFn({required List<int> numbers}) {
  int length = numbers.length;
  int helper = 0;
  for (int i = 0; i < length; i++) {
    for (int j = i + 1; j < length; j++) {
      if (numbers[i] > numbers[j]) {
        helper = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = helper;
      }
    }
  }

  return numbers;
}

int changeToNumberFn({required List<int> sortingList}) {
  int number = 0;
  int length = sortingList.length;
  for (int i = 0; i < length; i++) {
    number = (number * 10) + sortingList[i];
  }
  return number;
}

int numberSortFn({required int number}) {
  int sortingNumber = 0;
  List<int> numbers = changeToListFn(number: number);
  numbers = listSortingFn(numbers: numbers);
  sortingNumber = changeToNumberFn(sortingList: numbers);
  return sortingNumber;
}
