class Solution {
  static int maximumWealth(List<List<int>> accounts) {
    List<int> wealth = List.filled(accounts.length, 0);
    for (var i = 0; i < accounts.length; i++) {
      for (var j = 0; j < accounts[i].length; j++) {
        wealth[i] += accounts[i][j];
      }
    }

    return sortList(wealth)[wealth.length - 1];
  }

  static List<int> sortList(List<int> list) {
    for (var i = 0; i < list.length - 1; i++) {
      int curr = list[i];
      if (list[i] > list[i + 1]) {
        list[i] = list[i + 1];
        list[i + 1] = curr;
        i = -1;
      }
    }

    return list;
  }
}

void main(List<String> args) {
  int result = Solution.maximumWealth([
    [1, 5],
    [7, 3],
    [3, 5]
  ]);
  print(result);
}
