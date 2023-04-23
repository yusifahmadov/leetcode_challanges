class Solution {
  static int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }
}

void main(List<String> args) {
  int result = Solution.strStr("sadbutsad", "sad");
}
