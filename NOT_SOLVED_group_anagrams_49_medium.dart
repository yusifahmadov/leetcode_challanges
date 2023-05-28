class Solution {
  static List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> map = Map.fromIterable(
      List.generate(strs.length, (index) => strs[index]),
      key: (element) => element,
      value: (element) => [element],
    );

    for (var i = 0; i < strs.length; i++) {
      for (var j = 1; j < strs.length; j++) {
        if (anagramChecker(strs[i], strs[j])) {
          if (map.containsKey(strs[i])) {
            map.update(strs[i], (value) {
              value.add(strs[j]);
              return value;
            });
          }

          // strs.removeAt(j);
          // j = -1;
        }
      }
      if (strs.isNotEmpty) {
        strs.removeAt(i);
        i = -1;
      }
    }

    List<List<String>> list = map.values.toList();
    for (var i = 0; i < list.length; i++) {
      for (var j = 0; j < list.length; j++) {
        // if(list[i].length > list[j].length  )
      }
    }

    return map.values.toList();
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
  List<List<String>> result = Solution.groupAnagrams(["1", "1"]);
  List<List<String>> result2 = Solution.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]);
  // List<List<String>> result3 = Solution.groupAnagrams(["", "", ""]);
  List<List<String>> result4 = Solution.groupAnagrams(["ate", "eat", "tea"]);

  print(result);
  print(result2);
  // print(result3);
  print(result4);
}
