class Solution {
  static List<List<int>> permute(List<int> nums) {
    List<List<int>> permutations = [];
    int countOfPermute = 1;

    for (var i = 0; i < nums.length; i++) {
      countOfPermute = countOfPermute * (i + 1);
    }
    int index = 0;

    while (index < countOfPermute) {
      List<int> shuffled = List.from(nums)..shuffle();
      if (permutations.any((element) => listEquals(element, shuffled))) {
        continue;
      } else {
        permutations.add(shuffled);

        index++;
      }
    }

    return permutations;
  }

  static bool listEquals(List<int> list1, List<int> list2) {
    if (list1.length != list2.length) return false;
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) return false;
    }
    return true;
  }
}

void main(List<String> args) {
  List<List<int>> result = Solution.permute([0, 1]);
  print(result);
}
