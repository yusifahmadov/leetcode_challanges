class Solution {
  static int sumOfMultiples(int n) {
    int sum = 0;
    for (var i = 1; i < n + 1; i++) {
      if (i % 3 == 0 || i % 5 == 0 || i % 7 == 0) {
        sum += i;
      }
    }

    return sum;
  }
}

void main(List<String> args) {
  int result = Solution.sumOfMultiples(7);
  print(result);
}
