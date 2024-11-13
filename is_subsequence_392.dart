class Solution {
  bool isSubsequence(String s, String t) {
    List<String> firstList = s.split('');

    for (var i = 0; i < t.length; i++) {
      if (firstList.isNotEmpty && firstList[0] == t[i]) {
        firstList.removeAt(0);
      }
    }

    print(firstList);

    return firstList.isEmpty;
  }
}

void main(List<String> args) {
  final result = Solution().isSubsequence('axc', 'ahbgdc');

  print(result);
}
