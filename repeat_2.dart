class Solution {
  static bool containsDuplicate(List<int> nums) {
    Map<int, int> freqs = {};

    for (var i = 0; i < nums.length; i++) {
      freqs.addAll({nums[i]: 0});
    }

    return freqs.length < nums.length;
  }
}

void main(List<String> args) {
  bool result = Solution.containsDuplicate([1, 2, 3, 4]);

  print(result);
}
