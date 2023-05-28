class Solution {
  static bool isSumEqual(String firstWord, String secondWord, String targetWord) {
    return calculateWord(firstWord) + calculateWord(secondWord) == calculateWord(targetWord);
  }

  static int calculateWord(String word) {
    Map<String, int> letters = {"a": 0, "b": 1, "c": 2, "d": 3, "e": 4, "f": 5, "g": 6, "h": 7, "i": 8, "j": 9};
    List<String> tempList = word.split('');

    for (var i = 0; i < word.length; i++) {
      tempList[i] = letters[word[i]].toString();
    }
    return int.parse(tempList.join());
  }
}

void main(List<String> args) {
  bool result = Solution.isSumEqual('acb', 'cba', 'cdb');
  print(result);
}
