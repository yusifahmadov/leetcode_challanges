class Solution {
  static List<int> plusOne(List<int> digits) {
    int? mustChangeIndex;
    for (var i = 0; i < digits.length; i++) {
      if (digits[i] < 9) {
        if (digits.getRange(i + 1, digits.length).toList().every((element) => element == 9)) {
          mustChangeIndex = i;
        }
      }
    }

    if (mustChangeIndex != null) {
      for (var i = mustChangeIndex; i < digits.length; i++) {
        if (digits[mustChangeIndex] != 9) {
          if (digits[i] == 9) {
            digits[i] = 0;
          }
        }
      }
      digits[mustChangeIndex] = digits[mustChangeIndex] + 1;
    } else {
      if (digits.every((element) => element == 9)) {
        for (var i = 0; i < digits.length; i++) {
          digits[i] = 0;
          digits[0] = 1;
        }
        digits.add(0);
      } else {
        digits[digits.length - 1]++;
      }
    }

    return digits;
  }
}

void main(List<String> args) {
  List<int> result = Solution.plusOne([8, 9, 9, 9]);
  print(result);
}
