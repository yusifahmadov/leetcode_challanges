class Solution {
  static int romanToInt(String s) {
    Map<String, int> romanNumerals = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000};
    Map<String, int> specialCondition = {'IV': 4, 'IX': 9, 'XL': 40, 'XC': 90, 'CD': 400, 'CM': 900};
    int sum = 0;
    for (int i = 0; i < s.length; i++) {
      if (specialCondition.containsKey(i + 1 == s.length ? s[i] : s[i] + s[i + 1])) {
        sum += specialCondition.entries.where((element) => element.key == s[i] + s[i + 1]).first.value;
        i = i + 1;
      } else {
        sum += romanNumerals.entries.where((element) => element.key == s[i]).first.value;
      }
    }

    return sum;
  }

  static int romanToIntV2(String s) {
    Map<String, int> numbers = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int sum = 0;
    int index = 0;
    List<String> words = s.split('');

    while (index < words.length) {
      if (index + 1 < words.length) {
        if (numbers[words[index]]!.toInt() < numbers[words[index + 1]]!.toInt()) {
          int sum2 = numbers[words[index + 1]]!.toInt() - numbers[words[index]]!.toInt();
          sum = sum + sum2;
          sum2 = 0;
          index += 2;
        } else {
          sum = sum + numbers[words[index]]!.toInt();

          index++;
        }
      } else {
        sum = sum + numbers[words[index]]!.toInt();
        index++;
      }
    }
    return sum;
  }
}

void main(List<String> args) {
  int result = Solution.romanToIntV2('CMM');
  print(result);
}
