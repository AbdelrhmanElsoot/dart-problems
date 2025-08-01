void main() {
  List numbers = [5, 10, 11, 20, 5, 3, 30, 5];
  print(
    getSecondLargest(
      numbers: numbers,
      biggestNumber: getLargest(numbers: numbers),
    ),
  );
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

// i think check numbers[i] with biggest number and numbers[i-1]
// biggest > numbers[i] AND number[i] < numbers[i-1]
// we get sec biggest number

int getSecondLargest({required List numbers, required int biggestNumber}) {
  int secBigestNumber = numbers[0];
  int length = numbers.length;
  for (int i = 1; i < length; i++) {
    if (biggestNumber > numbers[i] && numbers[i] > secBigestNumber) {
      secBigestNumber = numbers[i];
    }
  }

  return secBigestNumber;
}
