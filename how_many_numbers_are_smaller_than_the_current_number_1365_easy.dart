class Solution {
  static List<int> smallerNumbersThanCurrent(List<int> nums) {
    List<int> counts = [];

    for (var i = 0; i < nums.length; i++) {
      counts.add(0);
      for (var j = 0; j < nums.length; j++) {
        if (nums[i] > nums[j]) {
          counts[i] = counts[i] + 1;
        }
      }
    }

    return counts;
  }
}

void main(List<String> args) {
  List<int> result = Solution.smallerNumbersThanCurrent([8, 1, 2, 2, 3]);
  print(result);
}
