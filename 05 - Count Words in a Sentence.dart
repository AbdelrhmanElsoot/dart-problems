void main() {
  String sentence = ",dgndfm,gnd dfn,gdfgnd dm,fngdf";
  int count = 0;
  List words = sentence.split(" ");
  count = words.length;
  print(count);
  print(wordsSentenceCount(sentence: 'fsdfsdm,nk ,sfnsdmf dmfnsdm, sd,mfnsd'));
}

int wordsSentenceCount({required String sentence}) {
  int count = 0;

  int length = sentence.length;
  for (int i = 0; i < length; i++) {
    if (sentence[i] == " ") {
      count++;
    }
  }

  count++;
  // To add last word in count
  return count;
}
