import 'dart:collection';

class Solution {
  static bool isValid(String s) {
    final stack = Queue<String>();
    for (var i = 0; i < s.length; i++) {
      if (s[i] == '(' || s[i] == "{" || s[i] == "[") {
        stack.addLast(s[i]);
      } else if (s[i] == ")" && stack.isNotEmpty && stack.last == "(") {
        stack.removeLast();
      } else if (s[i] == "}" && stack.isNotEmpty && stack.last == "{") {
        stack.removeLast();
      } else if (s[i] == "]" && stack.isNotEmpty && stack.last == "[") {
        stack.removeLast();
      } else {
        return false;
      }
    }

    return stack.isEmpty;
  }
}

// (){}}{ False
// ([)] False
// () True
// {[]} True
void main(List<String> args) {
  bool cond = Solution.isValid('([)]');
  print(cond);
}
