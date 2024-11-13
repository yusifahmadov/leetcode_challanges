class Solution {
  static bool hasEntry(Map<dynamic, int> map, dynamic value) {
    for (var i = 0; i < map.length; i++) {
      if (map.keys.toList()[i] == value) return true;
    }

    return false;
  }

  static bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, int> places = {};
    Map<int, int> freqs = {};
    for (var i = 0; i < nums.length; i++) {
      places.addAll({i: nums[i]});

      freqs.addAll({nums[i]: 1});
    }

    for (var i = 0; i < freqs.length; i++) {
      if (!places.containsKey(freqs[i])) places.remove(freqs[i]);
    }
    print(freqs);

    print(places);
    return false;
  }
}

void main(List<String> args) {
  bool result = Solution.containsNearbyDuplicate([1, 2, 3, 1], 3);
  print(result);
}
