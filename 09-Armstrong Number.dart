void main() {
  // true case ----->153
  //(1*1*1) + (5*5*5) + (2*2*2) = 153

  int number = 152;
  int cofNumber = number;
  int checkerNumaber = 0;
  List<int> numbers = [ ] ;
  while (cofNumber > 0) {
    numbers.add(cofNumber % 10);
    cofNumber = (cofNumber / 10).floor();
  }
  int length = numbers.length;
  for (int i = 0; i < length; i++) {
    checkerNumaber = checkerNumaber + (numbers[i] * numbers[i] * numbers[i]);
  }

  print(number == checkerNumaber);
}
