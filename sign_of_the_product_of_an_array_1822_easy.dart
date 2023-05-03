class Solution {
  static int arraySign(List<int> nums) {
    int product = 1;
    for (var i = 0; i < nums.length; i++) {
      product = product * signFunc(nums[i]);
    }
    return product;
  }

  static int signFunc(int x) {
    if (x == 0) {
      return x;
    } else if (x > 0) {
      return 1;
    }

    return -1;
  }
}

void main(List<String> args) {
  int result = Solution.arraySign([-1, -2, -3, -4, 3, 2, 1]);

  print(result);
}
