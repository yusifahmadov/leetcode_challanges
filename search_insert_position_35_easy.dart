class Solution {
  static int searchInsert(List<int> nums, int target) {
    int start = 0;
    int end = nums.length - 1;

    while (start <= end) {
      int middle = ((start + end) / 2).floor();
      if (target == nums[middle]) {
        return middle;
      } else if (target < nums[middle]) {
        end = middle - 1;
      } else {
        start = middle + 1;
      }
    }

    return start;
  }
}

void main(List<String> args) {
  int result = Solution.searchInsert([1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12], 11);
  print(result);
}
