import 'dart:math';

class Solution {
  static int minimumSum(int num) {
    List<int> numbers = num.toString().split("").map((e) => int.parse(e)).toList();
    List<List<int>> pairs = [];
    int distinctNumCount = numbers.toSet().length;

    int count = factorialCalculator(numbers.length) ~/
        (factorialCalculator(distinctNumCount) * factorialCalculator(numbers.length - distinctNumCount));

    int index = 0;

    while (index < count) {
      int rand1 = Random().nextInt(numbers.length);
      int rand2 = Random().nextInt(numbers.length - rand1);

      if (!pairs.contains(numbers.sublist(rand1, rand2))) {
        print(numbers.sublist(rand1, rand2));
        index++;
      }
    }

    return 0;
  }

  static int factorialCalculator(int num) {
    int result = 1;
    int index = 1;
    while (index < num + 1) {
      result = result * index;
      index++;
    }

    return result;
  }
}

void main(List<String> args) {
  int result = Solution.minimumSum(2932);
  print(result);
}
