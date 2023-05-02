class Solution {
  static void reverseString(List<String> s) {
    int end = s.length - 1;
    int start = 0;
    for (var i = 0; i < s.length - 1; i++) {
      if (end != start && end > start) {
        String curr = s[end];
        s[end] = s[start];
        s[start] = curr;
      }

      end--;
      start++;
    }
  }
}

void main(List<String> args) {
  Solution.reverseString(["h", "e", "l", "l", "o"]);
}
