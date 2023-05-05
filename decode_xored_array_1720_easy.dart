class Solution {
  static List<int> decode(List<int> encoded, int first) {
    List<int> arr = encoded;
    arr.insert(0, first);
    for (var i = 1; i < arr.length; i++) {
      arr[i] = arr[i - 1] ^ arr[i];
    }

    return arr;
  }
}

void main(List<String> args) {
  List<int> result = Solution.decode([1, 2, 3], 1);
  print(result);
}
