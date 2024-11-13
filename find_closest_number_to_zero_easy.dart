class Solution {
  List<int> tempList = [];

  int findClosestNumber(List<int> nums) {
    int distance = (nums[0] - 0).abs();
    Map<int, int> hashMap = {};
    for (var i = 0; i < nums.length; i++) {
      if ((nums[i] - 0).abs() <= distance) {
        distance = (nums[i] - 0).abs();

        if (hashMap.containsKey(distance) && nums[i] > hashMap[distance]!) {
          hashMap[distance] = nums[i];
        } else if (hashMap.containsKey(distance)) {
          continue;
        } else {
          hashMap.addAll({distance: nums[i]});
        }
      } else {
        continue;
      }
    }
    return hashMap[distance] ?? 0;
  }
}

void main(List<String> args) {
  final result = Solution().findClosestNumber([2, 1, 1, -1, 100000]);
  print(result);
}
