class Solution {
  static int finalValueAfterOperations(List<String> operations) {
    int res = 0;
    for (var i = 0; i < operations.length; i++) {
      if (operations[i][0] == "-" || operations[i][operations[i].length - 1] == "-") {
        res--;
      } else {
        res++;
      }
    }

    return res;
  }
}

void main(List<String> args) {
  int result = Solution.finalValueAfterOperations(["--X", "X++", "X++"]);
  print(result);
}
