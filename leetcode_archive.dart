bool isValid(String s) {
  List<String> result = s.split('');
  for (var i = 0; i < s.length; i++) {
    if (s[i] == '(') {
      print(result.indexWhere((element) => element == ')'));
      result.indexWhere((element) => element == ')') != -1 ? result.removeAt(result.indexWhere((element) => element == ')')) : null;
      result.indexWhere((element) => element == '(') != -1 ? result.removeAt(result.indexWhere((element) => element == '(')) : null;
    } else if (s[i] == '{') {
      result.indexWhere((element) => element == '}') != -1 ? result.removeAt(result.indexWhere((element) => element == '}')) : null;
      result.indexWhere((element) => element == '{') != -1 ? result.removeAt(result.indexWhere((element) => element == '{')) : null;
    } else if (s[i] == '[') {
      result.indexWhere((element) => element == ']') != -1 ? result.removeAt(result.indexWhere((element) => element == ']')) : null;
      result.indexWhere((element) => element == '[') != -1 ? result.removeAt(result.indexWhere((element) => element == '[')) : null;
    }
    print(result);
  }

  return result.isEmpty;
}
