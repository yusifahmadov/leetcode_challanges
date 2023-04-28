class Solution {
  static int removeElement(List<int> nums, int val) {
    int r = 1;
    nums.removeWhere((element) => element == val);
    for (var i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1]) {
        nums[r] = nums[i];
        r++;
      }
    }
    print(nums);
    return nums.length;
  }
}

void main(List<String> args) {
  int result = Solution.removeElement([1], 1);
}
