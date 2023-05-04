class Solution {
  static void moveZeroes(List<int> nums) {
    for (var i = 0; i < nums.length - 1; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        int curr = nums[j];
        if (nums[i] == 0) {
          nums[j] = 0;
          nums[i] = curr;
        }
      }
    }
    print(nums);
  }
}

void main(List<String> args) {
  Solution.moveZeroes([0, 1, 0, 3, 12]);
}
