class Solution {
  static String restoreString(String s, List<int> indices) {
    List<String> arr = List.filled(s.length, "");

    for (var i = 0; i < s.length; i++) {
      arr[indices[i]] = s[i];
    }

    return arr.join();
  }
}

void main(List<String> args) {
  String result = Solution.restoreString("codeleet", [4, 5, 6, 7, 0, 2, 1, 3]);
  print(result);
}
