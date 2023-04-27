class Solution {
  static int lengthOfLastWord(String s) {
    List<String> tempList = s.split(" ");
    tempList.removeWhere((element) => element == "");
    print(tempList);
    return tempList[tempList.length - 1].length;
  }
}

void main(List<String> args) {
  int result = Solution.lengthOfLastWord("   fly me   to   the moon  ");
  print(result);
}
