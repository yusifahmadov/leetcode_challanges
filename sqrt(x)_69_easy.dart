import 'dart:math';

class Solution {
  static int mySqrt(int x) {
    double y = (1 / 2) * (sqrt(x).floor() + (x / sqrt(x).floor()));

    for (var i = 0; i < 5; i++) {
      y = (1 / 2) * (y + (x / y));
    }

    return y.isNaN ? 0 : y.floor();
  }
}

void main(List<String> args) {
  int result = Solution.mySqrt(0);
}
