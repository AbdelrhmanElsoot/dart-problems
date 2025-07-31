void main() {
  String word = "le";
  String reversedWord = '';
  int length = word.length;

  for (int i = length - 1; i >= 0; i--) {
    reversedWord = reversedWord + word[i];
  }
  print((word == reversedWord) ? "Palindrome" : "Not Palindrome");
}
