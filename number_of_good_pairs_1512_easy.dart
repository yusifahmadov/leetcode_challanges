class Solution {
  static int numIdenticalPairs(List<int> nums) {
    int count = 0;
    for (var i = 0; i < nums.length; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j] && i < j) {
          count++;
        }
      }
    }

    return count;
  }
}

void main(List<String> args) {
  int result = Solution.numIdenticalPairs([1, 2, 3, 1, 1, 3]);
  print(result);
}
