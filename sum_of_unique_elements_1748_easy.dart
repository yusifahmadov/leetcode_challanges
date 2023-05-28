class Solution {
  static int sumOfUnique(List<int> nums) {
    Map<int, int> elements = Map.fromIterable(
      List.generate(nums.length, (index) => nums[index]),
      key: (element) => element,
      value: (element) => 0,
    );
    ;
    for (var i = 0; i < nums.length; i++) {
      elements.update(nums[i], (value) {
        return value + 1;
      });
    }

    int sum = 0;

    for (var i = 0; i < elements.entries.where((element) => element.value == 1).length; i++) {
      sum += elements.entries.where((element) => element.value == 1).toList()[i].key;
    }
    return sum;
  }
}

void main(List<String> args) {
  int result = Solution.sumOfUnique([1, 2, 3, 2]);
  print(result);
}
