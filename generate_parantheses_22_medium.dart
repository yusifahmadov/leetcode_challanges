class Solution {
  static List<String> generateParenthesis(int n) {
    List<String> stack = [];
    List<String> res = [];

    void backtrack(int openCount, int closedCount) {
      if (openCount == closedCount && closedCount == n && openCount == n) {
        res.add(stack.join(""));
        return;
      }
      if (openCount < n) {
        stack.add("(");
        backtrack(openCount + 1, closedCount);
        stack.removeLast();
      }
      if (closedCount < openCount) {
        stack.add(")");
        backtrack(openCount, closedCount + 1);
        stack.removeLast();
      }
    }

    backtrack(0, 0);
    return res;
  }
}

void main(List<String> args) {
  List<String> result = Solution.generateParenthesis(3);
  print(result);
}
