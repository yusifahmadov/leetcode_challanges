class Solution {
  static List<int> topKFrequent(List<int> nums, int k) {
    /// Time complexity must be better than O(nlogn)
    Map<int, int> map1 = {};

    for (var i = 0; i < nums.length; i++) {
      // n
      if (!map1.containsKey(nums[i])) {
        //n
        map1.addAll({nums[i]: 1});
      }
    }

    for (var i = 0; i < nums.length - 1; i++) {
      //n
      for (var j = i + 1; j < nums.length; j++) {
        // n^2
        if (nums[i] == nums[j]) {
          map1.update(nums[i], (value) {
            return value + 1;
          });
          nums.remove(nums[j]);
          j = i + 1;
        } else {}
      }
    }

    List result = map1.entries.toList(); // n

    result.sort(
      (a, b) => b.value.compareTo(a.value),
    ); // For small O(n^2), big lists -> O(n log(n))
    print(result);
    return result.map((e) => e.key as int).toList().getRange(0, 2).toList(); //n

    /// Our func time complexity is n^2 so result will be "time limit exceeded"
  }
}

void main(List<String> args) {
  List<int> result = Solution.topKFrequent([4, 1, -1, 2, -1, 2, 3], 2);
  print(result);
}
