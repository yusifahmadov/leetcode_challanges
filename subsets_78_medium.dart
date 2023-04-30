import 'dart:math';

class Solution {
  static List<List<int>> subsets(List<int> nums) {
    List<List<int>> subsets = [];

    int count = pow(2, nums.length).toInt();
    int index = 1;
    subsets.add([]);
    while (index < count) {
      List<int> tempList = List.from(nums);
      ;
      int randomForLoopCount = Random().nextInt(nums.length);
      for (var i = Random().nextInt(randomForLoopCount + 1); i < randomForLoopCount; i++) {
        tempList.removeAt(Random().nextInt(tempList.length));
      }
      if (subsets.any((element) => checkEquality(element, tempList))) {
        continue;
      } else {
        subsets.add(tempList);
        index++;
      }
    }
    return subsets;
  }

  static bool checkEquality(List<int> nums1, List<int> nums2) {
    if (nums1.length != nums2.length) return false;
    for (var i = 0; i < nums1.length; i++) {
      if (nums1[i] != nums2[i]) return false;
    }
    return true;
  }
}

void main(List<String> args) {
  List<List<int>> result = Solution.subsets([1, 2, 3, 4]);
  print(result);
}
