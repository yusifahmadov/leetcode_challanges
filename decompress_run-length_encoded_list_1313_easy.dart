class Solution {
  static List<int> decompressRLElist(List<int> nums) {
    List<List<int>> list = [];
    for (var i = 0; i < nums.length; i++) {
      list.add(List.filled(nums[i], nums[i + 1]));
      i++;
    }
    List<int> mergedList = [];

    for (var i = 0; i < list.length; i++) {
      mergedList.addAll(list[i]);
    }

    return mergedList;
  }
}

void main(List<String> args) {
  List<int> result = Solution.decompressRLElist([1, 2, 3, 4]);
  print(result);
}
