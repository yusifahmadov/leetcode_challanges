class Solution {
  static int smallestEvenMultiple(int n) {
    return n % 2 == 0 ? n : n * 2;
  }
}

void main(List<String> args) {
  int result = Solution.smallestEvenMultiple(119);
  print(result);
}
