class Solution {
  static int numJewelsInStones(String jewels, String stones) {
    int count = 0;
    for (var i = 0; i < stones.length; i++) {
      if (jewels.contains(stones[i])) {
        count++;
      }
    }

    return count;
  }
}

void main(List<String> args) {
  int result = Solution.numJewelsInStones("aA", "aAAbbbb");
  print(result);
}
