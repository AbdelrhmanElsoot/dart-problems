// Input: 942
// Step 1: 9 + 4 + 2 = 15
// Step 2: 1 + 5 = 6
// Output: 6

void main() {
  print(digitalRoot(number: 942)); // Output: 6
}

List<int> getDigits(int number) {
  List<int> digits = [];
  while (number > 0) {
    digits.add(number % 10);
    number ~/= 10;
  }
  return digits;
}

int sumList(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    sum = sum + num;
  }
  return sum;
}

int digitalRoot({required int number}) {
  int sum = number;

  while (sum >= 10) {
    sum = sumList(getDigits(sum));
  }

  return sum;
}
