class Solution {
  static List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> freq = {};
    for (int num in nums) {
      //n
      freq[num] = (freq[num] ?? 0) + 1;
    }
    List<int> uniqueNums = freq.keys.toList(); //n

    uniqueNums.sort((a, b) => freq[b]!.compareTo(freq[a]!)); // nlogn
    return uniqueNums.sublist(0, k); //n
  }
}

void main(List<String> args) {
  List<int> result = Solution.topKFrequent([4, 1, -1, 2, -1, 2, 3], 2);
  print(result);
}
