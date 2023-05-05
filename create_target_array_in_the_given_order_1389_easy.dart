class Solution {
  static List<int> createTargetArray(List<int> nums, List<int> index) {
    List<int> targetArray = [];
    for (var i = 0; i < nums.length; i++) {
      targetArray.insert(index[i], nums[i]);
    }

    return targetArray;
  }
}

void main(List<String> args) {
  List<int> result = Solution.createTargetArray([0, 1, 2, 3, 4], [0, 1, 2, 2, 1]);
}
