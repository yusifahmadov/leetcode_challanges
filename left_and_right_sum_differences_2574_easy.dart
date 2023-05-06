class Solution {
  static List<int> leftRigthDifference(List<int> nums) {
    List<int> leftArr = [];
    int sum = 0;
    List<int> rightArr = [];
    for (var i = 0; i < nums.length; i++) {
      leftArr.add(sum);
      sum += nums[i];
    }
    sum = 0;
    for (var i = nums.length - 1; i > -1; i--) {
      rightArr.add(sum);
      sum += nums[i];
    }
    rightArr = rightArr.reversed.toList();
    List<int> finalArr = [];
    for (var i = 0; i < leftArr.length; i++) {
      finalArr.add((leftArr[i] - rightArr[i]).abs());
    }
    return finalArr;
  }
}

void main(List<String> args) {
  List<int> res = Solution.leftRigthDifference([10, 4, 8, 3]);
  print(res);
}
