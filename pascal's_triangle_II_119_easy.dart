class Solution {
  static List<int> getRow(int rowIndex) {
    List<List<int>> list = [];

    for (var i = 0; i < rowIndex + 1; i++) {
      list.add(List.generate(i + 1, (index) => 1));
    }

    for (var i = 0; i < list.length - 1; i++) {
      for (var j = 0; j < list[i].length - 1; j++) {
        list[i + 1][j + 1] = list[i][j] + list[i][j + 1];
      }
    }

    return list[rowIndex];
  }
}

void main(List<String> args) {
  List<int> result = Solution.getRow(3);
  print(result);
}
