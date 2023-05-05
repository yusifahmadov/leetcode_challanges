class Solution {
  static int mostWordsFound(List<String> sentences) {
    List<int> numberOfWords = [];
    for (var i = 0; i < sentences.length; i++) {
      numberOfWords.add(sentences[i].split(" ").toList().length);
    }
    numberOfWords.sort();
    return numberOfWords[numberOfWords.length - 1];
  }
}

void main(List<String> args) {
  int result = Solution.mostWordsFound(["alice and bob love leetcode", "i think so too", "this is great thanks very much"]);
  print(result);
}
