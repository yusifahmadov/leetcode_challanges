class Solution {
  static List<int> getConcatenation(List<int> nums) {
    int numsLength = nums.length;
    for (var i = 0; i < numsLength; i++) {
      nums.add(nums[i]);
    }

    return nums;
  }
}

void main(List<String> args) {
  List<int> result = Solution.getConcatenation([1, 2, 1]);
  print(result);
}
