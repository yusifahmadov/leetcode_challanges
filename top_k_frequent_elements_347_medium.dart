class Solution {
  static List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> freq = {};
    for (int num in nums) {
      freq[num] = (freq[num] ?? 0) + 1;
    }
    List<int> uniqueNums = freq.keys.toList();

    uniqueNums.sort((a, b) => freq[b]!.compareTo(freq[a]!));
    return uniqueNums.sublist(0, k);
  }
}

void main(List<String> args) {
  List<int> result = Solution.topKFrequent([4, 1, -1, 2, -1, 2, 3], 2);
  print(result);
}
