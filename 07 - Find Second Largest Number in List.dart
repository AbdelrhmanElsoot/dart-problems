void main() {
  List numbers = [10, 5, 5, 5];
  Set newNumber = numbers.toSet();
  if (newNumber.length == 1) {
    print('Null');
  } else {
    print(
      getSecondLargest(
        numbers: numbers,
        biggestNumber: getLargest(numbers: numbers),
      ),
    );
  }
}

// to get biggest number
int getLargest({required List numbers}) {
  int largestNumber = numbers[0];
  int length = numbers.length;
  for (int i = 1; i < length; i++) {
    if (numbers[i] > largestNumber) {
      largestNumber = numbers[i];
    }
  }
  return largestNumber;
}

// check numbers[i] with biggest number and numbers[i-1]
// biggest > numbers[i] AND number[i] < numbers[i-1]
// we get sec biggest number

int getSecondLargest({required List numbers, required int biggestNumber}) {
  int? secBigestNumber;
  for (int number in numbers) {
    if (number < biggestNumber) {
      if (secBigestNumber == null || number > secBigestNumber) {
        secBigestNumber = number;
      }
    }
  }
  return secBigestNumber!;
}
