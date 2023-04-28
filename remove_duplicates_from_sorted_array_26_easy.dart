class Solution {
  static int removeDuplicates(List<int> nums) {
    int l = 1;
    for (var i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1]) {
        nums[l] = nums[i];
        l++;
      }
    }
    print(nums);
    return l;
  }
}

void main(List<String> args) {
  int result = Solution.removeDuplicates([1, 1, 2]);

  print(result);
}
