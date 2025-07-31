void main() {
  String word = "string";
  String reversedWord = '';
  int length = word.length;

  for (int i = length - 1; i >= 0; i--) {
    reversedWord = reversedWord + word[i];
  }
  print(reversedWord);
}
