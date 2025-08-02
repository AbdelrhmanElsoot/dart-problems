void main() {
  int number = 195;
  int reversedNumber = 0;
  while (number > 0) {
    reversedNumber = (reversedNumber * 10) + (number % 10);
    number = (number / 10).floor();
  }
  print(reversedNumber);
}
