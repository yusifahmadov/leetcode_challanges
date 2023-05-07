class Solution {
  static int search(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;
    while (left <= right) {
      int middle = ((left + right) / 2).floor();
      if (nums[middle] == target) {
        return middle;
      } else if (target < nums[middle]) {
        right = middle - 1;
      } else {
        left = middle + 1;
      }
    }

    return -1;
  }
}

void main(List<String> args) {
  int result = Solution.search([-1, 0, 3, 5, 9, 12], 9);
  print(result);
}
