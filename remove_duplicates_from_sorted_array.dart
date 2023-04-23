class Solution {
  static int removeDuplicates(List<int> nums) {
    List<String> expectedNums = nums.map((e) => e.toString()).toList();

    // for (var i = 0; i < expectedNums.length; i++) {
    //   for (var j = 1; j < expectedNums.length - 1; j++) {
    //     if (expectedNums[i] == expectedNums[j] && expectedNums[j] != '_') {
    //       expectedNums[j] = '_';
    //     }
    //   }
    // }

    for (var i = 0; i < expectedNums.length - 1; i++) {
      for (var j = 1; j < expectedNums.length; j++) {
        String curr = expectedNums[j];
        if (expectedNums[i] == '_' && expectedNums[j] != '_') {
          expectedNums[i] = curr;
          expectedNums[j] = "_";
        }
      }
    }
    print(expectedNums);
    return expectedNums.length;
  }
}

void main(List<String> args) {
  int result = Solution.removeDuplicates([1, 1, 2]);

  print(result);
}
