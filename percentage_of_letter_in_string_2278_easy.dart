class Solution {
  static int percentageLetter(String s, String letter) {
    return ((s.split('').where((element) => element == letter).length / s.length) * 100).toInt();
  }
}

void main(List<String> args) {
  int result = Solution.percentageLetter('foobar', 'o');
  print(result);
}
