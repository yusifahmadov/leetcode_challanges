class Solution {
  static bool isAnagram(String s, String t) {
    //Case 1
    if (s.length != t.length) {
      return false;
    }
    Map<String, int> mapOfT = {};
    Map<String, int> mapOfS = {};
    for (var i = 0; i < t.length; i++) {
      mapOfT.addAll({t[i]: 0});
      mapOfS.addAll({s[i]: 0});
    }

    for (var i = 0; i < t.length; i++) {
      mapOfT.update(t[i], (value) => value + 1);
    }
    for (var i = 0; i < s.length; i++) {
      mapOfS.update(s[i], (value) => value + 1);
    }

    for (var i = 0; i < t.length; i++) {
      if (mapOfT[t[i]] != mapOfS[t[i]]) {
        return false;
      }
    }
    return true;
  }
}

void main(List<String> args) {
  bool result = Solution.isAnagram("anagram", "nagaram");
  bool result2 = Solution.isAnagram("aacc", "ccac");

  print(result);
  print(result2);
}
