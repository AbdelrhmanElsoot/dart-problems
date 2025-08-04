//without Map or Set
// numbers : 0 ,1 ,2,3,4,5,6,7,8,9
// "counting" is the list have 10 indeces [0,0,0,0,0,0,0,0,0,0]
// if (counting[index] = numebr) that mean occ. of number is index
// [0,0,3,.....] ---> number 2 occ. 3 time

void main() {
  int number = 1011588099;
  List<int> numbers = numbersList(number: number);
  int length = numbers.length;
  List<int> countingList = List.filled(10, 0);
  for (int i = 0; i < length; i++) {
    countingList[numbers[i]] += 1;
  }
  for (int i = 0; i < 10; i++) {
    if (countingList[i] != 0) {
      print("${i} ---> ${countingList[i]}");
    }
  }
}

List<int> numbersList({required int number}) {
  List<int> numbers = [];
  while (number > 0) {
    numbers.add(number % 10);
    number = (number / 10).floor();
  }
  return numbers;
}
