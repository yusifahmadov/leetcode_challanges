class Solution {
  static List<List<String>> groupAnagrams(List<String> strs) {
    List<List<String>> list = [];

    for (var i = 0; i < strs.length; i++) {
      if (!list.any((element) => element.contains(strs[i]))) {
        list.add([strs[i]]);
      }
      for (var j = 1; j < strs.length; j++) {
        if (anagramChecker(strs[i], strs[j]) && strs[i] != strs[j]) {
          if (!list.any((element) => element.contains(strs[j]))) {
            list.where((element) => element.contains(strs[i])).first.add(strs[j]);
          }
        }
      }
    }
    print(list);
    return list;
  }

  static bool anagramChecker(String a, String b) {
    Map<String, int> freqsA = {};
    Map<String, int> freqsB = {};
    if (a.length != b.length) {
      return false;
    }
    for (var i = 0; i < a.length; i++) {
      freqsA.addAll({a[i]: 1});
      freqsB.addAll({b[i]: 1});
    }

    for (var i = 0; i < freqsA.length; i++) {
      if (freqsA[freqsA.keys.toList()[i]] != freqsB[freqsA.keys.toList()[i]]) {
        return false;
      }
    }

    return true;
  }
}

void main(List<String> args) {
  // ["eat", "tea", "tan", "ate", "nat", "bat"]
  List<List<String>> result = Solution.groupAnagrams(["1", "1"]);
  print(result);
}
