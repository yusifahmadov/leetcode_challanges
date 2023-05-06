class Solution {
  static List<int> buildArray(List<int> nums) {
    List<int> arr = [];

    for (var i = 0; i < nums.length; i++) {
      arr.add(nums[nums[i]]);
    }

    return arr;
  }
}

void main(List<String> args) {
  List<int> result = Solution.buildArray([0, 2, 1, 5, 3, 4]);
  print(result);
}
