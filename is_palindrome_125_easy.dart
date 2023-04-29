class Solution {
  static bool isPalindrome(String s) {
    s = s.replaceAll(" ", "").toLowerCase().replaceAll(RegExp("[^a-zA-Z0-9]"), "");
    return s.split("").reversed.join() == s;
  }
}

void main(List<String> args) {
  bool palindrome = Solution.isPalindrome("0P");
  print(palindrome);
}
