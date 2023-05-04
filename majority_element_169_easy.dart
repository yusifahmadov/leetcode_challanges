class Solution {
  static int majorityElement(List<int> nums) {
    Map<int, int> map = {};

    for (var i = 0; i < nums.length; i++) {
      map.addAll({nums[i]: 0});
    }

    for (var i = 0; i < nums.length; i++) {
      map.update(nums[i], (value) => value + 1);
    }

    return map.entries.where((element) => element.value > (nums.length / 2)).first.key;
  }
}

void main(List<String> args) {
  int result = Solution.majorityElement([2, 2, 1, 1, 1, 2, 2]);
  print(result);
}
