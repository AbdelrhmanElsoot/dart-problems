//28 → 1 + 2 + 4 + 7 + 14 = 28 → True

void main() {
  int number = 28;
  int checker = 1;
  int sum = 0;
  while (number > checker) {
    if (number % checker == 0) {
      sum += checker;
    }
    checker++;
  }
  print(sum == checker);
}
