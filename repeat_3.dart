class Solution {
  static bool mapHasEntry({required Map<String, int> map, required String key}) {
    for (var i = 0; i < map.entries.length; i++) {
      if (map.keys.toList()[i] == key) return true;
    }

    return false;
  }

  static bool isAnagram(String s, String t) {
    if (t.length != s.length) return false;

    Map<String, int> frequenciesForT = {};
    Map<String, int> frequenciesForS = {};

    for (var i = 0; i < t.length; i++) {
      if (mapHasEntry(map: frequenciesForT, key: t[i])) {
        frequenciesForT.update(t[i], (value) => value + 1);
      } else {
        frequenciesForT.addAll({t[i]: 1});
      }

      if (mapHasEntry(map: frequenciesForS, key: s[i])) {
        frequenciesForS.update(s[i], (value) => value + 1);
      } else {
        frequenciesForS.addAll({s[i]: 1});
      }
    }

    for (var i = 0; i < t.length; i++) {
      if (frequenciesForT[t[i]] != frequenciesForS[t[i]]) return false;
    }

    return true;
  }
}

void main(List<String> args) {
  bool result = Solution.isAnagram('rat', 'car');

  print(result);
}
