class Solution {
  static int singleNumber(List<int> nums) {
    return nums.reduce((value, element) => value ^ element);
  }
}

void main(List<String> args) {
  int result = Solution.singleNumber([2, 2, 1]);
  print(result);
}
