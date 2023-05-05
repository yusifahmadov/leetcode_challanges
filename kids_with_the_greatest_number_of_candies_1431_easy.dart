class Solution {
  static List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<bool> result = [];
    for (var i = 0; i < candies.length; i++) {
      result.add(listGreatestChecker(candies[i] + extraCandies, candies));
    }

    return result;
  }

  static bool listGreatestChecker(int num, List<int> list) {
    for (var i = 0; i < list.length; i++) {
      if (list[i] > num) {
        return false;
      }
    }

    return true;
  }
}

void main(List<String> args) {
  List<bool> result = Solution.kidsWithCandies([4, 2, 1, 1, 2], 1);
  print(result);
}
